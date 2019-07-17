//
//  IMGWindowMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/17.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGWindowMaker.h"

@interface IMGWindowMaker ()

/// 被修改
@property (nonatomic, strong, readwrite) UIWindow *makable;

@end

@implementation IMGWindowMaker


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
