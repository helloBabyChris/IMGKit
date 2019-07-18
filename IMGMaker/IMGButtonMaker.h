//
//  IMGButtonMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGControlMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGButtonMaker : IMGControlMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UIButton *button;

#pragma mark - property

@property (nonatomic, copy, readonly) IMGButtonMaker *(^contentEdgeInsets)(UIEdgeInsets contentEdgeInsets) UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readonly) IMGButtonMaker *(^titleEdgeInsets)(UIEdgeInsets titleEdgeInsets);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^reversesTitleShadowWhenHighlighted)(BOOL reversesTitleShadowWhenHighlighted);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^imageEdgeInsets)(UIEdgeInsets imageEdgeInsets);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^adjustsImageWhenHighlighted)(BOOL adjustsImageWhenHighlighted);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^adjustsImageWhenDisabled)(BOOL adjustsImageWhenDisabled);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^showsTouchWhenHighlighted)(BOOL showsTouchWhenHighlighted) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGButtonMaker *(^tintColor)(UIColor *_Nullable tintColor) NS_AVAILABLE_IOS(5_0);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^setTitleForState)(NSString *_Nullable title, UIControlState state);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^setTitleColorForState)(UIColor *_Nullable color, UIControlState state);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^setTitleShadowColorForState)(UIColor *_Nullable color, UIControlState state);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^setImageForState)(UIImage *_Nullable image, UIControlState state);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^setBackgroundImageForState)(UIImage *_Nullable image, UIControlState state);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^setAttributedTitleForState)(NSAttributedString *_Nullable title, UIControlState state);
@property (nonatomic, copy, readonly) IMGButtonMaker *(^font)(UIFont *font) NS_DEPRECATED_IOS(2_0, 3_0) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGButtonMaker *(^lineBreakMode)(NSLineBreakMode lineBreakMode) NS_DEPRECATED_IOS(2_0, 3_0) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGButtonMaker *(^titleShadowOffset)(CGSize titleShadowOffset) NS_DEPRECATED_IOS(2_0, 3_0) __TVOS_PROHIBITED;

@end

@interface UIButton (IMGButtonMaker)

+ (UIButton *)img_makeButton:(void(NS_NOESCAPE ^)(IMGButtonMaker *make))block;

- (void)img_makeButton:(void(NS_NOESCAPE ^)(IMGButtonMaker *make))block;

@end

NS_ASSUME_NONNULL_END
