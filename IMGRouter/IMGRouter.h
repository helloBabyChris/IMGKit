//
//  IMGRouter.h
//  IMGRouter
//
//  Created by Chris on 2019/7/9.
//  Copyright © 2019 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString *const IMGRouterParameterJumpMode;
extern NSString *const IMGRouterParameterAnimated;
extern NSString *const IMGRouterParameterPresentCompletion;

/// success 打开路由成功或者失败
typedef void(^IMGRouterHandler)(BOOL success);

@interface IMGRouter : NSObject

+ (void)openURL:(NSString *)url;

+ (void)openURL:(NSString *)url parameter:(nullable NSDictionary *)parameter;

+ (void)openURL:(NSString *)url handler:(nullable IMGRouterHandler)handler;

+ (void)openURL:(NSString *)url parameter:(nullable NSDictionary *)parameter handler:(nullable IMGRouterHandler)handler;

@end

@interface UIViewController (IMGRouter)

/// 参数
@property (nullable, nonatomic, copy) NSDictionary *parameter;

@end

NS_ASSUME_NONNULL_END
