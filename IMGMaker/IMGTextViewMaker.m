//
//  IMGTextViewMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGTextViewMaker.h"

@interface IMGTextViewMaker ()

///
@property (nonatomic, weak) UITextView *img_textView;

@end

@implementation IMGTextViewMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_textView = makable;
    }
    return self;
}

#pragma mark - 自定义

- (UITextView *)textView {
    return self.img_textView;
}

#pragma mark - property

- (IMGTextViewMaker * _Nonnull (^)(id<UITextViewDelegate> _Nullable))delegate {
    return ^ IMGTextViewMaker *(id<UITextViewDelegate>_Nullable delegate) {
        self.img_textView.delegate = delegate;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(NSString * _Nullable))text {
    return ^ IMGTextViewMaker *(NSString *_Nullable text) {
        self.img_textView.text = text;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(UIFont * _Nullable))font {
    return ^ IMGTextViewMaker *(UIFont *_Nullable font) {
        self.img_textView.font = font;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(UIColor * _Nullable))textColor {
    return ^ IMGTextViewMaker *(UIColor *_Nullable textColor) {
        self.img_textView.textColor = textColor;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(NSTextAlignment))textAlignment {
    return ^ IMGTextViewMaker *(NSTextAlignment textAlignment) {
        self.img_textView.textAlignment = textAlignment;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(NSRange))selectedRange {
    return ^ IMGTextViewMaker *(NSRange selectedRange) {
        self.img_textView.selectedRange = selectedRange;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(BOOL))editable {
    return ^ IMGTextViewMaker *(BOOL editable) {
        self.img_textView.editable = editable;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(BOOL))selectable {
    return ^ IMGTextViewMaker *(BOOL selectable) {
        self.img_textView.selectable = selectable;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(UIDataDetectorTypes))dataDetectorTypes {
    return ^ IMGTextViewMaker *(UIDataDetectorTypes dataDetectorTypes) {
        self.img_textView.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(BOOL))allowsEditingTextAttributes {
    return ^ IMGTextViewMaker *(BOOL allowsEditingTextAttributes) {
        self.img_textView.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(NSAttributedString * _Nullable))attributedText {
    return ^ IMGTextViewMaker *(NSAttributedString *_Nullable attributedText) {
        self.img_textView.attributedText = attributedText;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(NSDictionary<NSString *,id> * _Nullable))typingAttributes {
    return ^ IMGTextViewMaker *(NSDictionary<NSString *,id> * _Nullable typingAttributes) {
        self.img_textView.typingAttributes = typingAttributes;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(NSRange))scrollRangeToVisible {
    return ^ IMGTextViewMaker *(NSRange range) {
        [self.img_textView scrollRangeToVisible:range];
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(UIView * _Nullable))inputView {
    return ^ IMGTextViewMaker *(UIView * _Nullable inputView) {
        self.img_textView.inputView = inputView;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(UIView * _Nullable))inputAccessoryView {
    return ^ IMGTextViewMaker *(UIView * _Nullable inputAccessoryView) {
        self.img_textView.inputAccessoryView = inputAccessoryView;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(BOOL))clearsOnInsertion {
    return ^ IMGTextViewMaker *(BOOL clearsOnInsertion) {
        self.img_textView.clearsOnInsertion = clearsOnInsertion;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(UIEdgeInsets))textContainerInset {
    return ^ IMGTextViewMaker *(UIEdgeInsets textContainerInset) {
        self.img_textView.textContainerInset = textContainerInset;
        return self;
    };
}

- (IMGTextViewMaker * _Nonnull (^)(NSDictionary<NSString *,id> * _Nullable))linkTextAttributes {
    return ^ IMGTextViewMaker *(NSDictionary<NSString *,id> * _Nullable linkTextAttributes) {
        self.img_textView.linkTextAttributes = linkTextAttributes;
        return self;
    };
}

@end


@implementation UITextView (IMGTextViewMaker)

+ (UITextView *)img_makeTextView:(void (NS_NOESCAPE ^)(IMGTextViewMaker *))block {
    UITextView *textView = [[UITextView alloc] init];
    [textView img_makeTextView:block];
    return textView;
}

- (void)img_makeTextView:(void (NS_NOESCAPE ^)(IMGTextViewMaker *))block {
    IMGTextViewMaker *maker = [[IMGTextViewMaker alloc] initWithMakable:self];
    block(maker);
}

@end
