//
//  IMGTimerManager.m
//  IMGTool
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGTimerManager.h"
#import <pthread.h>

@interface __IMGTimer : NSObject

/// 名称
@property (nonatomic, copy) NSString *name;
/// timer
@property dispatch_source_t timer;
/// block 集合
@property (nonatomic, copy) NSArray <void (^)(void)>*blocks;

- (instancetype)initWithName:(NSString *)name queue:(dispatch_queue_t)queue;

- (void)resume;

- (void)cancel;

- (void)addBlock:(void (^)(void))block;

- (void)resetBlock;

@end

@implementation __IMGTimer

- (instancetype)initWithName:(NSString *)name queue:(dispatch_queue_t)queue {
    self = [super init];
    if (self) {
        _name = name;
        _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue ? : dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0));
    }
    return self;
}

- (void)resume {
    dispatch_resume(self.timer);
}

- (void)cancel {
    dispatch_cancel(self.timer);
}

- (void)addBlock:(void (^)(void))block {
    if (!block) return;
    NSMutableArray *blocks = [NSMutableArray arrayWithArray:self.blocks];
    [blocks addObject:block];
    self.blocks = [NSArray arrayWithArray:blocks];
}

- (void)resetBlock {
    self.blocks = nil;
}

@end

@interface IMGTimerManager ()

/// timer
@property (nonatomic, strong) NSMutableDictionary <NSString *, __IMGTimer *>*timers;

/// timer queue
@property (nonatomic) dispatch_queue_t queue;

@end

@implementation IMGTimerManager {
    
}

+ (IMGTimerManager *)sharedManager {
    static IMGTimerManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self.class alloc] init];
    });
    return manager;
}

- (NSString *)scheduledTimerWithName:(NSString *)name interval:(NSTimeInterval)interval execute:(void (^)(void))block {
    return [self scheduledTimerWithName:name delay:0 interval:interval repeats:YES execute:block];
}

- (NSString *)scheduledTimerWithName:(NSString *)name delay:(NSTimeInterval)delay interval:(NSTimeInterval)interval repeats:(BOOL)repeats execute:(void (^)(void))block {
    return [self scheduledTimerWithName:name delay:delay interval:interval leeway:0.01 queue:dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) repeats:YES abandonPrevious:YES execute:block];
}

- (NSString *)scheduledTimerWithName:(NSString *)name delay:(NSTimeInterval)delay interval:(NSTimeInterval)interval leeway:(NSTimeInterval)leeway queue:(dispatch_queue_t)queue repeats:(BOOL)repeats abandonPrevious:(BOOL)abandonPrevious execute:(void (^)(void))block {
    if (!name.length) return nil;
    __IMGTimer *timer = [self.timers objectForKey:name];
    if (!timer) {
        timer = [[__IMGTimer alloc] initWithName:name queue:queue];
        [timer resume];
        [self.timers setObject:timer forKey:name];
    }
    /* timer精度 */
    dispatch_source_set_timer(timer.timer, dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC), interval * NSEC_PER_SEC, leeway * NSEC_PER_SEC);
    // 废弃之前的回调
    if (abandonPrevious) [timer resetBlock];
    [timer addBlock:block];
    dispatch_source_set_event_handler(timer.timer, ^{
        [timer.blocks enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            void (^block)(void) = obj;
            block();
        }];
        if (!repeats) {
            [self _cancelTimerWithName:name];
        }
    });
    return name;
}


- (void)cancelTimer:(NSString *)timer {
    [self _cancelTimerWithName:timer];
}

- (BOOL)existTimer:(NSString *)timer {
    return [self.timers.allKeys containsObject:timer];
}

- (void)_cancelTimerWithName:(NSString *)name {
    __IMGTimer *timer = [self.timers objectForKey:name];
    if (!timer) return;
    [timer cancel];
    [self.timers removeObjectForKey:name];
}

#pragma mark - setter or getter

- (NSMutableDictionary<NSString *,__IMGTimer *> *)timers {
    if (!_timers) {
        _timers = [NSMutableDictionary dictionary];
    }
    return _timers;
}

@end
