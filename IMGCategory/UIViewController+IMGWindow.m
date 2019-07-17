//
//  UIViewController+IMGWindow.m
//  IMGCategory
//
//  Created by Chris on 2019/7/10.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "UIViewController+IMGWindow.h"

@implementation UIViewController (IMGWindow)

- (void)img_show {
    UIView *coverView = [[UIView alloc] initWithFrame:UIScreen.mainScreen.bounds];
    coverView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6];
    [self.view addSubview:coverView];
    [self.view sendSubviewToBack:coverView];
    UIWindow *window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    window.rootViewController = UIViewController.alloc.init;
    window.windowLevel = UIWindowLevelAlert;
    [window makeKeyAndVisible];
    // [window makeKeyAndVisible] 需要时间 如果不after 会报警告
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [window.rootViewController presentViewController:self animated:NO completion:nil];
    });
}

@end
