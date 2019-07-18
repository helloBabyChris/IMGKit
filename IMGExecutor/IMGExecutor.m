//
//  IMGExecutor.m
//  IMGExecutor
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGExecutor.h"

@interface IMGExecutor ()

/// <#note#>
@property (nonatomic, copy) NSString *name;

@property  dispatch_queue_t queue;


@end

@implementation IMGExecutor

+ (IMGExecutor *)mainExecutor {
    static IMGExecutor *executor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        executor = [[self.class alloc] init];
        executor.name = @"cn.chris.IMGExecutor.mainExecutor";
        executor.queue = dispatch_get_main_queue();
    });
    return executor;
}

+ (IMGExecutor *)highExecutor {
    static IMGExecutor *executor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        executor = [[self.class alloc] init];
        executor.name = @"cn.chris.IMGExecutor.highExecutor";
        executor.queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    });
    return executor;
}

+ (IMGExecutor *)defaultExecutor {
    static IMGExecutor *executor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        executor = [[self.class alloc] init];
        executor.name = @"cn.chris.IMGExecutor.defaultExecutor";
        executor.queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    });
    return executor;
}

+ (IMGExecutor *)lowExecutor {
    static IMGExecutor *executor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        executor = [[self.class alloc] init];
        executor.name = @"cn.chris.IMGExecutor.lowExecutor";
        executor.queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0);
    });
    return executor;
}

+ (IMGExecutor *)backgroundExecutor {
    static IMGExecutor *executor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        executor = [[self.class alloc] init];
        executor.name = @"cn.chris.IMGExecutor.backgroundExecutor";
        executor.queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
    });
    return executor;
}

+ (IMGExecutor *)serialExecutor {
    static IMGExecutor *executor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        executor = [[self.class alloc] init];
        executor.name = @"cn.chris.IMGExecutor.serialExecutor";
        executor.queue = dispatch_queue_create(executor.name.UTF8String, DISPATCH_QUEUE_SERIAL);
    });
    return executor;
}

+ (IMGExecutor *)concurrentExecutor {
    static IMGExecutor *executor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        executor = [[self.class alloc] init];
        executor.name = @"cn.chris.IMGExecutor.concurrentExecutor";
        executor.queue = dispatch_queue_create(executor.name.UTF8String, DISPATCH_QUEUE_CONCURRENT);
    });
    return executor;
}

- (void)syncExecute:(void (^)(void))block {
    NSCParameterAssert(block != NULL);
    dispatch_sync(self.queue, ^{
        block();
    });
}

- (void)asyncExecute:(void (^)(void))block {
    NSCParameterAssert(block != NULL);
    dispatch_async(self.queue, ^{
        block();
    });
}

- (void)syncBarrier:(void(^)(void))block {
    NSCParameterAssert(block != NULL);
    dispatch_barrier_sync(self.queue, ^{
        block();
    });
}

- (void)asyncBarrier:(void(^)(void))block {
    NSCParameterAssert(block != NULL);
    dispatch_barrier_async(self.queue, ^{
        block();
    });
}

- (void)delay:(NSTimeInterval)delay execute:(void (^)(void))block {
    NSCParameterAssert(block != NULL);
    [self after:[NSDate dateWithTimeIntervalSinceNow:delay] execute:block];
}

- (void)after:(NSDate *)date execute:(void (^)(void))block {
    NSCParameterAssert(date != nil);
    NSCParameterAssert(block != NULL);
    dispatch_after([self.class wallTimeWithDate:date], self.queue, ^{
        block();
    });
}

- (void)delay:(NSTimeInterval)delay interval:(NSTimeInterval)interval leeway:(NSTimeInterval)leeway execute:(void (^)(void))block {
    NSCParameterAssert(interval > 0.0 && interval < INT64_MAX / NSEC_PER_SEC);
    NSCParameterAssert(leeway >= 0.0 && leeway < INT64_MAX / NSEC_PER_SEC);
    NSCParameterAssert(block != NULL);
    [self after:[NSDate dateWithTimeIntervalSinceNow:delay] interval:interval leeway:leeway execute:block];
}

- (void)after:(NSDate *)date interval:(NSTimeInterval)interval leeway:(NSTimeInterval)leeway execute:(void (^)(void))block {
    NSCParameterAssert(date != nil);
    NSCParameterAssert(interval > 0.0 && interval < INT64_MAX / NSEC_PER_SEC);
    NSCParameterAssert(leeway >= 0.0 && leeway < INT64_MAX / NSEC_PER_SEC);
    NSCParameterAssert(block != NULL);
    uint64_t intervalInNanoSecs = (uint64_t)(interval * NSEC_PER_SEC);
    uint64_t leewayInNanoSecs = (uint64_t)(leeway * NSEC_PER_SEC);
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, self.queue);
    dispatch_source_set_timer(timer, [self.class wallTimeWithDate:date], intervalInNanoSecs, leewayInNanoSecs);
    dispatch_source_set_event_handler(timer, block);
    dispatch_resume(timer);
}

- (void)suspend {
    dispatch_suspend(self.queue);
}

- (void)resume {
    dispatch_resume(self.queue);
}

+ (dispatch_time_t)wallTimeWithDate:(NSDate *)date {
    NSCParameterAssert(date != nil);
    double seconds = 0;
    double frac = modf(date.timeIntervalSince1970, &seconds);
    struct timespec walltime = {
        .tv_sec = (time_t)fmin(fmax(seconds, LONG_MIN), LONG_MAX),
        .tv_nsec = (long)fmin(fmax(frac * NSEC_PER_SEC, LONG_MIN), LONG_MAX)
    };
    return dispatch_walltime(&walltime, 0);
}

@end
