//
//  UIAlertController+IMGCategory.m
//  IMGCategory
//
//  Created by Chris on 2019/7/10.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "UIAlertController+IMGCategory.h"

@implementation UIAlertController (IMGCategory)

+ (instancetype)img_alertControllerWithTitle:(nullable NSString *)title {
    return [self img_alertControllerWithTitle:title message:nil];
}

+ (instancetype)img_alertControllerWithMessage:(nullable NSString *)message {
    return [self img_alertControllerWithTitle:nil message:message];
}

+ (instancetype)img_alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message {
    return [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
}

+ (instancetype)img_sheetControllerWithTitle:(nullable NSString *)title {
    return [self img_sheetControllerWithTitle:title message:nil];
}

+ (instancetype)img_sheetControllerWithMessage:(nullable NSString *)message {
    return [self img_sheetControllerWithTitle:nil message:message];
}

+ (instancetype)img_sheetControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message {
    return [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
}

- (UIAlertAction *)img_addDefaultActionWithTitle:(nullable NSString *)title {
    return [self img_addDefaultActionWithTitle:title handler:nil];
}

- (UIAlertAction *)img_addDefaultActionWithTitle:(nullable NSString *)title handler:(void (^ __nullable)(UIAlertAction *action))handler {
    UIAlertAction *action = [UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:handler];
    [self addAction:action];
    return action;
}

- (UIAlertAction *)img_addCancelActionWithTitle:(nullable NSString *)title {
    return [self img_addCancelActionWithTitle:title handler:nil];
}

- (UIAlertAction *)img_addCancelActionWithTitle:(nullable NSString *)title handler:(void (^ __nullable)(UIAlertAction *action))handler {
    UIAlertAction *action = [UIAlertAction actionWithTitle:title style:UIAlertActionStyleCancel handler:handler];
    [self addAction:action];
    return action;
}

- (UIAlertAction *)img_addDestructiveActionWithTitle:(nullable NSString *)title {
    return [self img_addDestructiveActionWithTitle:title handler:nil];
}

- (UIAlertAction *)img_addDestructiveActionWithTitle:(nullable NSString *)title handler:(void (^ __nullable)(UIAlertAction *action))handler {
    UIAlertAction *action = [UIAlertAction actionWithTitle:title style:UIAlertActionStyleDestructive handler:handler];
    [self addAction:action];
    return action;
}


@end
