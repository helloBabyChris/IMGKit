//
//  IMGTimerManager.h
//  IMGTool
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IMGTimerManager : NSObject

+ (IMGTimerManager *)sharedManager;

/* 启动定时 延时0 精确度0.01 重复YES 默认线程 删除之前回调*/
- (NSString *)scheduledTimerWithName:(NSString *)name interval:(NSTimeInterval)interval execute:(void (^)(void))block;

/* 启动定时 精确度0.01 默认线程 删除之前回调*/
- (NSString *)scheduledTimerWithName:(NSString *)name delay:(NSTimeInterval)delay interval:(NSTimeInterval)interval repeats:(BOOL)repeats execute:(void (^)(void))block;

- (NSString *)scheduledTimerWithName:(NSString *)name delay:(NSTimeInterval)delay interval:(NSTimeInterval)interval leeway:(NSTimeInterval)leeway queue:(dispatch_queue_t)queue repeats:(BOOL)repeats abandonPrevious:(BOOL)abandonPrevious execute:(void (^)(void))block;

- (void)cancelTimer:(NSString *)timer;

- (BOOL)existTimer:(NSString *)timer;

@end

NS_ASSUME_NONNULL_END
