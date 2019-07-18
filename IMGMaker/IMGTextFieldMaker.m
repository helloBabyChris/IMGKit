//
//  IMGTextFieldMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGTextFieldMaker.h"

@interface IMGTextFieldMaker ()

///
@property (nonatomic, weak) UITextField *img_textField;

@end

@implementation IMGTextFieldMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_textField = makable;
    }
    return self;
}

#pragma mark - 自定义

- (UITextField *)textField {
    return self.img_textField;
}

#pragma mark - property

- (IMGTextFieldMaker * _Nonnull (^)(NSString * _Nullable))text {
    return ^ IMGTextFieldMaker *(NSString *_Nullable text) {
        self.img_textField.text = text;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(NSAttributedString * _Nullable))attributedText {
    return ^ IMGTextFieldMaker *(NSAttributedString *_Nullable attributedText) {
        self.img_textField.attributedText = attributedText;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UIColor * _Nullable))textColor {
    return ^ IMGTextFieldMaker *(UIColor *_Nullable textColor) {
        self.img_textField.textColor = textColor;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UIFont * _Nullable))font {
    return ^ IMGTextFieldMaker *(UIFont *_Nullable font) {
        self.img_textField.font = font;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(NSTextAlignment))textAlignment {
    return ^ IMGTextFieldMaker *(NSTextAlignment textAlignment) {
        self.img_textField.textAlignment = textAlignment;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UITextBorderStyle))borderStyle {
    return ^ IMGTextFieldMaker *(UITextBorderStyle borderStyle) {
        self.img_textField.borderStyle = borderStyle;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(NSDictionary<NSString *,id> * _Nonnull))defaultTextAttributes {
    return ^ IMGTextFieldMaker *(NSDictionary<NSString *, id> *_Nonnull defaultTextAttributes) {
        self.img_textField.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(NSString * _Nullable))placeholder {
    return ^ IMGTextFieldMaker *(NSString *_Nullable placeholder) {
        self.img_textField.placeholder = placeholder;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(NSAttributedString * _Nullable))attributedPlaceholder {
    return ^ IMGTextFieldMaker *(NSAttributedString *_Nullable attributedPlaceholder) {
        self.img_textField.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(BOOL))clearsOnBeginEditing {
    return ^ IMGTextFieldMaker *(BOOL clearsOnBeginEditing) {
        self.img_textField.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(BOOL))adjustsFontSizeToFitWidth {
    return ^ IMGTextFieldMaker *(BOOL adjustsFontSizeToFitWidth) {
        self.img_textField.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(CGFloat))minimumFontSize {
    return ^ IMGTextFieldMaker *(CGFloat minimumFontSize) {
        self.img_textField.minimumFontSize = minimumFontSize;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(id<UITextFieldDelegate> _Nullable))delegate {
    return ^ IMGTextFieldMaker *(id<UITextFieldDelegate>_Nullable delegate) {
        self.img_textField.delegate = delegate;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UIImage * _Nonnull))background {
    return ^ IMGTextFieldMaker *(UIImage *_Nullable background) {
        self.img_textField.background = background;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UIImage * _Nullable))disabledBackground {
    return ^ IMGTextFieldMaker *(UIImage *_Nullable disabledBackground) {
        self.img_textField.disabledBackground = disabledBackground;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(BOOL))allowsEditingTextAttributes {
    return ^ IMGTextFieldMaker *(BOOL allowsEditingTextAttributes) {
        self.img_textField.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(NSDictionary<NSString *,id> * _Nullable))typingAttributes {
    return ^ IMGTextFieldMaker *(NSDictionary<NSString *, id> *_Nullable typingAttributes) {
        self.img_textField.typingAttributes = typingAttributes;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UITextFieldViewMode))clearButtonMode {
    return ^ IMGTextFieldMaker *(UITextFieldViewMode clearButtonMode) {
        self.img_textField.clearButtonMode = clearButtonMode;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UIView * _Nullable))leftView {
    return ^ IMGTextFieldMaker *(UIView *_Nullable leftView) {
        self.img_textField.leftView = leftView;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UITextFieldViewMode))leftViewMode {
    return ^ IMGTextFieldMaker *(UITextFieldViewMode leftViewMode) {
        self.img_textField.leftViewMode = leftViewMode;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UIView * _Nullable))rightView {
    return ^ IMGTextFieldMaker *(UIView *_Nullable rightView) {
        self.img_textField.rightView = rightView;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UITextFieldViewMode))rightViewMode {
    return ^ IMGTextFieldMaker *(UITextFieldViewMode rightViewMode) {
        self.img_textField.rightViewMode = rightViewMode;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(CGRect))drawTextInRect {
    return ^ IMGTextFieldMaker *(CGRect rect) {
        [self.img_textField drawTextInRect:rect];
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(CGRect))drawPlaceholderInRect {
    return ^ IMGTextFieldMaker *(CGRect rect) {
        [self.img_textField drawPlaceholderInRect:rect];
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UIView * _Nullable))inputView {
    return ^ IMGTextFieldMaker *(UIView *_Nullable inputView) {
        self.img_textField.inputView = inputView;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(UIView * _Nullable))inputAccessoryView {
    return ^ IMGTextFieldMaker *(UIView *_Nullable inputAccessoryView) {
        self.img_textField.inputAccessoryView = inputAccessoryView;
        return self;
    };
}

- (IMGTextFieldMaker * _Nonnull (^)(BOOL))clearsOnInsertion {
    return ^ IMGTextFieldMaker *(BOOL clearsOnInsertion) {
        self.img_textField.clearsOnInsertion = clearsOnInsertion;
        return self;
    };
}

@end

@implementation UITextField (IMGTextFieldMaker)

+ (UITextField *)img_makeTextField:(void (NS_NOESCAPE ^)(IMGTextFieldMaker * _Nonnull))block {
    UITextField *textField = [[UITextField alloc] init];
    [textField img_makeTextField:block];
    return textField;
}

- (void)img_makeTextField:(void (NS_NOESCAPE ^)(IMGTextFieldMaker * _Nonnull))block {
    IMGTextFieldMaker *maker = [[IMGTextFieldMaker alloc] initWithMakable:self];
    block(maker);
}

@end
