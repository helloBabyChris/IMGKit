//
//  IMGLabelMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGLabelMaker.h"

@interface IMGLabelMaker ()

///
@property (nonatomic, weak) UILabel *img_label;

@end

@implementation IMGLabelMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_label = makable;
    }
    return self;
}

#pragma mark - 自定义

- (UILabel *)label {
    return self.label;
}

#pragma mark - property

- (IMGLabelMaker * _Nonnull (^)(NSString * _Nullable))text {
    return ^ IMGLabelMaker *(NSString *text) {
        self.img_label.text = text;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(UIFont * _Nullable))font {
    return ^ IMGLabelMaker *(UIFont *font) {
        self.img_label.font = font;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(UIColor * _Nullable))textColor {
    return ^ IMGLabelMaker *(UIColor *textColor) {
        self.img_label.textColor = textColor;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(CGSize))shadowOffset {
    return ^ IMGLabelMaker *(CGSize shadowOffset) {
        self.img_label.shadowOffset = shadowOffset;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(NSTextAlignment))textAlignment {
    return ^ IMGLabelMaker *(NSTextAlignment textAlignment) {
        self.img_label.textAlignment = textAlignment;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(NSLineBreakMode))lineBreakMode {
    return ^ IMGLabelMaker *(NSLineBreakMode lineBreakMode) {
        self.img_label.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(NSAttributedString * _Nullable))attributedText {
    return ^ IMGLabelMaker *(NSAttributedString *attributedText) {
        self.img_label.attributedText = attributedText;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(UIColor * _Nullable))highlightedTextColor {
    return ^ IMGLabelMaker *(UIColor *highlightedTextColor) {
        self.img_label.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^ IMGLabelMaker *(BOOL userInteractionEnabled) {
        self.img_label.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(BOOL))enabled {
    return ^ IMGLabelMaker *(BOOL enabled) {
        self.img_label.enabled = enabled;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(NSInteger))numberOfLines {
    return ^ IMGLabelMaker *(NSInteger numberOfLines) {
        self.img_label.numberOfLines = numberOfLines;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(BOOL))adjustsFontSizeToFitWidth {
    return ^ IMGLabelMaker *(BOOL adjustsFontSizeToFitWidth) {
        self.img_label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(UIBaselineAdjustment))baselineAdjustment {
    return ^ IMGLabelMaker *(UIBaselineAdjustment baselineAdjustment) {
        self.img_label.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(CGFloat))minimumScaleFactor {
    return ^ IMGLabelMaker *(CGFloat minimumScaleFactor) {
        self.img_label.minimumScaleFactor = minimumScaleFactor;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(CGRect))drawTextInRect {
    return ^ IMGLabelMaker *(CGRect rect) {
        [self.img_label drawTextInRect:rect];
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(CGFloat))preferredMaxLayoutWidth {
    return ^ IMGLabelMaker *(CGFloat preferredMaxLayoutWidth) {
        self.img_label.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(CGFloat))minimumFontSize {
    return ^ IMGLabelMaker *(CGFloat minimumFontSize) {
        self.img_label.minimumFontSize = minimumFontSize;
        return self;
    };
}

- (IMGLabelMaker * _Nonnull (^)(BOOL))adjustsLetterSpacingToFitWidth {
    return ^ IMGLabelMaker *(BOOL adjustsLetterSpacingToFitWidth) {
        self.img_label.adjustsLetterSpacingToFitWidth = adjustsLetterSpacingToFitWidth;
        return self;
    };
}

@end

@implementation UILabel (IMGLabelMaker)

+ (instancetype)img_makeLabel:(void (NS_NOESCAPE ^)(IMGLabelMaker * _Nonnull))block {
    UILabel *label = [[UILabel alloc] init];
    [label img_makeLabel:block];
    return label;
}

- (void)img_makeLabel:(void (NS_NOESCAPE ^)(IMGLabelMaker * _Nonnull))block {
    IMGLabelMaker *maker = [[IMGLabelMaker alloc] initWithMakable:self];
    block(maker);
}

@end
