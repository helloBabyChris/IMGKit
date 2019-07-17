//
//  IMGRouter.m
//  IMGRouter
//
//  Created by Chris on 2019/7/9.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGRouter.h"
#import <objc/runtime.h>

NSString * const IMGRouterParameterJumpMode = @"IMGRouterParameterJumpMode";
NSString * const IMGRouterParameterAnimated = @"IMGRouterParameterAnimated";
NSString * const IMGRouterParameterPresentCompletion = @"IMGRouterParameterPresentCompletion";


@implementation IMGRouter

+ (instancetype)sharedRouter {
    static IMGRouter *router = NULL;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        router = [[self.class alloc] init];
    });
    return router;
}

+ (void)openURL:(NSString *)url {
    [self openURL:url parameter:nil handler:nil];
}

+ (void)openURL:(NSString *)url parameter:(nullable NSDictionary *)parameter {
    [self openURL:url parameter:parameter handler:nil];
}

+ (void)openURL:(NSString *)url handler:(nullable IMGRouterHandler)handler {
    [self openURL:url parameter:nil handler:handler];
}

+ (void)openURL:(NSString *)url parameter:(NSDictionary *)parameter handler:(nullable IMGRouterHandler)handler {
    UIViewController *viewController = [[NSClassFromString(url) alloc] init];
    if (!viewController) {
        if (handler) handler(NO);
        NSLog(@"IMGRouter 找不到需要跳转的ViewController");
        return;
    }
    UIViewController *topViewController = [self _topViewController];
    if (!topViewController) {
        if (handler) handler(NO);
        NSLog(@"IMGRouter 找不到当前的ViewController");
        return;
    }
    viewController.parameter = parameter;
    UINavigationController *navigationController = topViewController.navigationController;
    BOOL animated = parameter[IMGRouterParameterAnimated] ? [parameter[IMGRouterParameterAnimated] boolValue] : YES;
    NSString *jumpMode = parameter[IMGRouterParameterJumpMode];
    if (navigationController) {
        if (!jumpMode) jumpMode = @"push";
        if ([jumpMode isEqualToString:@"present"]) {
            void(^completion)(void) = parameter[IMGRouterParameterPresentCompletion];
            [navigationController presentViewController:viewController animated:animated completion:completion];
            if (handler) {
                handler(YES);
            }
        }else if ([jumpMode isEqualToString:@"push"]) {
            [navigationController pushViewController:viewController animated:animated];
            if (handler) handler(YES);
        }else {
            if (handler) handler(NO);
            NSLog(@"IMGRouter 找不到跳转方式");
        }
        return;
    }
    if (!jumpMode) jumpMode = @"present";
    if ([jumpMode isEqualToString:@"present"]) {
        void(^completion)(void) = parameter[IMGRouterParameterPresentCompletion];
        [topViewController presentViewController:viewController animated:animated completion:completion];
        if (handler) handler(YES);
    }else {
        if (handler) handler(NO);
        NSLog(@"IMGRouter 找不到跳转方式");
    }
}

+ (UIViewController *)_topViewController {
    NSArray <UIWindow *>*windows = UIApplication.sharedApplication.windows;
    __block UIWindow *window;
    [windows enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(UIWindow * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj.windowLevel == UIWindowLevelNormal) {
//            [obj becomeKeyWindow];
            window = obj;
            *stop = YES;
        }else {
//            [obj resignKeyWindow];
        }
    }];
    if (!window) {
        return nil;
    }
    UIViewController *topViewController = window.rootViewController;
    while (true) {
        if (topViewController.presentedViewController) {
            topViewController = topViewController.presentedViewController;
        }else if ([topViewController isKindOfClass:UITabBarController.class]) {
            UITabBarController *tabBarController = (UITabBarController *)topViewController;
            topViewController = tabBarController.selectedViewController;
        }else if ([topViewController isKindOfClass:UINavigationController.class]  && [(UINavigationController*)topViewController topViewController]) {
            topViewController = [(UINavigationController *)topViewController topViewController];
        }else {
            break;
        }
    }
    return topViewController;
}

@end

@implementation UIViewController (IMGRouter)

static char kUIViewControllerParameter;

- (void)setParameter:(NSDictionary *)parameter {
    objc_setAssociatedObject(self, &kUIViewControllerParameter, parameter, OBJC_ASSOCIATION_COPY);
}

- (NSDictionary *)parameter {
    return objc_getAssociatedObject(self, &kUIViewControllerParameter);
}

@end

