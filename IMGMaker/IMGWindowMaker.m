//
//  IMGWindowMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/17.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGWindowMaker.h"

@interface IMGWindowMaker ()

/// 
@property (nonatomic, weak) UIWindow *img_window;

@end

@implementation IMGWindowMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_window = makable;
    }
    return self;
}

- (UIWindow *)window {
    return self.img_window;
}

#pragma mark - property

- (IMGWindowMaker * _Nonnull (^)(UIScreen * _Nonnull))screen {
    return ^ IMGWindowMaker * (UIScreen *screen) {
        self.img_window.screen = screen;
        return self;
    };
}

- (IMGWindowMaker * _Nonnull (^)(UIWindowLevel))windowLevel {
    return ^ IMGWindowMaker * (UIWindowLevel windowLevel) {
        self.img_window.windowLevel = windowLevel;
        return self;
    };
}

- (IMGWindowMaker * _Nonnull (^)(void))becomeKeyWindow {
    return ^ IMGWindowMaker * (void) {
        [self.img_window becomeKeyWindow];
        return self;
    };
}

- (IMGWindowMaker * _Nonnull (^)(void))resignKeyWindow {
    return ^ IMGWindowMaker * (void) {
        [self.img_window resignKeyWindow];
        return self;
    };
}

- (IMGWindowMaker * _Nonnull (^)(void))makeKeyWindow {
    return ^ IMGWindowMaker * (void) {
        [self.img_window makeKeyWindow];
        return self;
    };
}

- (IMGWindowMaker * _Nonnull (^)(void))makeKeyAndVisible {
    return ^ IMGWindowMaker * (void) {
        [self.img_window makeKeyAndVisible];
        return self;
    };
}

- (IMGWindowMaker * _Nonnull (^)(UIViewController * _Nullable))rootViewController {
    return ^ IMGWindowMaker * (UIViewController * _Nullable rootViewController) {
        self.img_window.rootViewController = rootViewController;
        return self;
    };
}

- (IMGWindowMaker * _Nonnull (^)(UIEvent * _Nonnull))sendEvent {
    return ^ IMGWindowMaker * (UIEvent *event) {
        [self.img_window sendEvent:event];
        return self;
    };
}

@end

@implementation UIWindow (IMGWindowMaker)

+ (instancetype)img_makeWindow:(void (NS_NOESCAPE ^)(IMGWindowMaker * _Nonnull))block {
    UIWindow *window = [[UIWindow alloc] init];
    [window img_makeWindow:block];
    return window;
}

- (void)img_makeWindow:(void (NS_NOESCAPE ^)(IMGWindowMaker * _Nonnull))block {
    IMGWindowMaker *maker = [[IMGWindowMaker alloc] initWithMakable:self];
    block(maker);
}

@end
