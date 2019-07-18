//
//  IMGWindowMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/17.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGViewMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGWindowMaker : IMGViewMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UIWindow *window;

#pragma mark - property

@property (nonatomic, copy, readonly) IMGWindowMaker * (^screen)(UIScreen *screen) NS_AVAILABLE_IOS(3_2);
@property (nonatomic, copy, readonly) IMGWindowMaker * (^windowLevel)(UIWindowLevel windowLevel);
@property (nonatomic, copy, readonly) IMGWindowMaker * (^becomeKeyWindow)(void);
@property (nonatomic, copy, readonly) IMGWindowMaker * (^resignKeyWindow)(void);
@property (nonatomic, copy, readonly) IMGWindowMaker * (^makeKeyWindow)(void);
@property (nonatomic, copy, readonly) IMGWindowMaker * (^makeKeyAndVisible)(void);
@property (nonatomic, copy, readonly) IMGWindowMaker * (^rootViewController)(UIViewController *_Nullable rootViewController) NS_AVAILABLE_IOS(4_0);
@property (nonatomic, copy, readonly) IMGWindowMaker * (^sendEvent)(UIEvent *event);

@end

@interface UIWindow (IMGWindowMaker)

+ (instancetype)img_makeWindow:(void(NS_NOESCAPE ^)(IMGWindowMaker *make))block;

- (void)img_makeWindow:(void(NS_NOESCAPE ^)(IMGWindowMaker *make))block;

@end

NS_ASSUME_NONNULL_END
