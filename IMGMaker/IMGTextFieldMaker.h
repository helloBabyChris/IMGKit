//
//  IMGTextFieldMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGControlMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGTextFieldMaker : IMGControlMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UITextField *textField;

#pragma mark - property

@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^text)(NSString *_Nullable text);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^attributedText)(NSAttributedString *_Nullable attributedText) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^textColor)(UIColor *_Nullable textColor);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^font)(UIFont *_Nullable font);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^borderStyle)(UITextBorderStyle borderStyle);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^defaultTextAttributes)(NSDictionary<NSString *, id> *defaultTextAttributes);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^placeholder)(NSString *_Nullable placeholder);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^attributedPlaceholder)(NSAttributedString *_Nullable attributedPlaceholder) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^clearsOnBeginEditing)(BOOL clearsOnBeginEditing);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^minimumFontSize)(CGFloat minimumFontSize);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^delegate)(id<UITextFieldDelegate>_Nullable delegate);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^background)(UIImage *_Nullable background);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^disabledBackground)(UIImage *_Nullable disabledBackground);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^typingAttributes)(NSDictionary<NSString *, id> *_Nullable typingAttributes);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^clearButtonMode)(UITextFieldViewMode clearButtonMode);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^leftView)(UIView *_Nullable leftView);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^leftViewMode)(UITextFieldViewMode leftViewMode);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^rightView)(UIView *_Nullable rightView);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^rightViewMode)(UITextFieldViewMode rightViewMode);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^drawTextInRect)(CGRect rect);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^drawPlaceholderInRect)(CGRect rect);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^inputView)(UIView *_Nullable inputView);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^inputAccessoryView)(UIView *_Nullable inputAccessoryView);
@property (nonatomic, copy, readonly) IMGTextFieldMaker *(^clearsOnInsertion)(BOOL clearsOnInsertion) NS_AVAILABLE_IOS(6_0);

@end

@interface UITextField (IMGTextFieldMaker)

+ (UITextField *)img_makeTextField:(void(NS_NOESCAPE ^)(IMGTextFieldMaker *make))block;

- (void)img_makeTextField:(void(NS_NOESCAPE ^)(IMGTextFieldMaker *make))block;

@end

NS_ASSUME_NONNULL_END
