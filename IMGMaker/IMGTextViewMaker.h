//
//  IMGTextViewMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGScrollViewMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGTextViewMaker : IMGScrollViewMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UITextView *textView;

#pragma mark - property

@property (nonatomic, copy, readonly) IMGTextViewMaker *(^delegate)(id<UITextViewDelegate>_Nullable delegate);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^text)(NSString *_Nullable text);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^font)(UIFont *_Nullable font);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^textColor)(UIColor *_Nullable textColor);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^selectedRange)(NSRange selectedRange);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^editable)(BOOL editable) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^selectable)(BOOL selectable) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^dataDetectorTypes)(UIDataDetectorTypes dataDetectorTypes) NS_AVAILABLE_IOS(3_0) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^attributedText)(NSAttributedString *_Nullable attributedText) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^typingAttributes)(NSDictionary<NSString *, id> *_Nullable typingAttributes )NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^scrollRangeToVisible)(NSRange range);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^inputView)(UIView *_Nullable inputView);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^inputAccessoryView)(UIView *_Nullable inputAccessoryView);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^clearsOnInsertion)(BOOL clearsOnInsertion) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^textContainerInset)(UIEdgeInsets textContainerInset) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) IMGTextViewMaker *(^linkTextAttributes)(NSDictionary<NSString *, id> *_Nullable linkTextAttributes) NS_AVAILABLE_IOS(7_0);

@end

@interface UITextView (IMGTextViewMaker)

+ (UITextView *)img_makeTextView:(void(NS_NOESCAPE ^)(IMGTextViewMaker *make))block;

- (void)img_makeTextView:(void(NS_NOESCAPE ^)(IMGTextViewMaker *make))block;

@end

NS_ASSUME_NONNULL_END
