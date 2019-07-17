//
//  UIAlertController+IMGCategory.h
//  IMGCategory
//
//  Created by Chris on 2019/7/10.
//  Copyright © 2019 Chris. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController (IMGCategory)

+ (instancetype)img_alertControllerWithTitle:(nullable NSString *)title;

+ (instancetype)img_alertControllerWithMessage:(nullable NSString *)message;

+ (instancetype)img_alertControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message;

+ (instancetype)img_sheetControllerWithTitle:(nullable NSString *)title;

+ (instancetype)img_sheetControllerWithMessage:(nullable NSString *)message;

+ (instancetype)img_sheetControllerWithTitle:(nullable NSString *)title message:(nullable NSString *)message;

- (UIAlertAction *)img_addDefaultActionWithTitle:(nullable NSString *)title;

- (UIAlertAction *)img_addDefaultActionWithTitle:(nullable NSString *)title handler:(void (^ __nullable)(UIAlertAction *action))handler;

- (UIAlertAction *)img_addCancelActionWithTitle:(nullable NSString *)title;

- (UIAlertAction *)img_addCancelActionWithTitle:(nullable NSString *)title handler:(void (^ __nullable)(UIAlertAction *action))handler;

- (UIAlertAction *)img_addDestructiveActionWithTitle:(nullable NSString *)title;

- (UIAlertAction *)img_addDestructiveActionWithTitle:(nullable NSString *)title handler:(void (^ __nullable)(UIAlertAction *action))handler;


@end

NS_ASSUME_NONNULL_END
