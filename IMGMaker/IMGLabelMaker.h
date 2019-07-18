//
//  IMGLabelMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGViewMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGLabelMaker : IMGViewMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UILabel *label;

#pragma mark - property

@property (nonatomic, copy, readonly) IMGLabelMaker *(^text)(NSString *_Nullable text);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^font)(UIFont *_Nullable font);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^textColor)(UIColor *_Nullable textColor);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^shadowOffset)(CGSize shadowOffset);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^lineBreakMode)(NSLineBreakMode lineBreakMode);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^attributedText)(NSAttributedString *_Nullable attributedText) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^highlightedTextColor)(UIColor *_Nullable highlightedTextColor);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^highlighted)(BOOL highlighted);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^userInteractionEnabled)(BOOL userInteractionEnabled);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^enabled)(BOOL enabled);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^numberOfLines)(NSInteger numberOfLines);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^baselineAdjustment)(UIBaselineAdjustment baselineAdjustment);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^minimumScaleFactor)(CGFloat minimumScaleFactor) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^allowsDefaultTighteningForTruncation)(BOOL allowsDefaultTighteningForTruncation) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^drawTextInRect)(CGRect rect);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^preferredMaxLayoutWidth)(CGFloat preferredMaxLayoutWidth) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGLabelMaker *(^minimumFontSize)(CGFloat minimumFontSize) NS_DEPRECATED_IOS(2_0, 6_0) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGLabelMaker *(^adjustsLetterSpacingToFitWidth)(BOOL adjustsLetterSpacingToFitWidth) NS_DEPRECATED_IOS(6_0,7_0) __TVOS_PROHIBITED;

@end

@interface UILabel (IMGLabelMaker)

+ (instancetype)img_makeLabel:(void(NS_NOESCAPE ^)(IMGLabelMaker *make))block;

- (void)img_makeLabel:(void(NS_NOESCAPE ^)(IMGLabelMaker *make))block;

@end

NS_ASSUME_NONNULL_END
