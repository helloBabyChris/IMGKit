//
//  IMGExecutor.h
//  IMGExecutor
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IMGExecutor : NSObject

+ (IMGExecutor *)mainExecutor;

+ (IMGExecutor *)highExecutor;

+ (IMGExecutor *)defaultExecutor;

+ (IMGExecutor *)lowExecutor;

+ (IMGExecutor *)backgroundExecutor;

+ (IMGExecutor *)serialExecutor;

+ (IMGExecutor *)concurrentExecutor;

- (void)syncExecute:(void (^)(void))block;

- (void)asyncExecute:(void (^)(void))block;

- (void)syncBarrier:(void(^)(void))block;

- (void)asyncBarrier:(void(^)(void))block;

- (void)delay:(NSTimeInterval)delay execute:(void (^)(void))block;

- (void)delay:(NSTimeInterval)delay interval:(NSTimeInterval)interval leeway:(NSTimeInterval)leeway execute:(void (^)(void))block;

- (void)after:(NSDate *)date execute:(void (^)(void))block;

- (void)after:(NSDate *)date interval:(NSTimeInterval)interval leeway:(NSTimeInterval)leeway execute:(void (^)(void))block;

- (void)suspend;

- (void)resume;

@end

NS_ASSUME_NONNULL_END
