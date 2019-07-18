//
//  IMGButtonMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGButtonMaker.h"

@interface IMGButtonMaker ()
///
@property (nonatomic, weak) UIButton *img_button;

@end

@implementation IMGButtonMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_button = makable;
    }
    return self;
}

#pragma mark - 自定义

- (UIButton *)button {
    return self.img_button;
}

#pragma mark - property

- (IMGButtonMaker * _Nonnull (^)(UIEdgeInsets))contentEdgeInsets {
    return ^ IMGButtonMaker *(UIEdgeInsets contentEdgeInsets) {
        self.img_button.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(UIEdgeInsets))titleEdgeInsets {
    return ^ IMGButtonMaker *(UIEdgeInsets titleEdgeInsets) {
        self.img_button.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

-(IMGButtonMaker * _Nonnull (^)(BOOL))reversesTitleShadowWhenHighlighted {
    return ^ IMGButtonMaker *(BOOL reversesTitleShadowWhenHighlighted) {
        self.img_button.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(UIEdgeInsets))imageEdgeInsets {
    return ^ IMGButtonMaker *(UIEdgeInsets imageEdgeInsets) {
        self.img_button.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(BOOL))adjustsImageWhenHighlighted{
    return ^ IMGButtonMaker *(BOOL adjustsImageWhenHighlighted) {
        self.img_button.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(BOOL))adjustsImageWhenDisabled {
    return ^ IMGButtonMaker *(BOOL adjustsImageWhenDisabled) {
        self.img_button.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(BOOL))showsTouchWhenHighlighted {
    return ^ IMGButtonMaker *(BOOL showsTouchWhenHighlighted) {
        self.img_button.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(UIColor * _Nullable))tintColor {
    return ^ IMGButtonMaker *(UIColor *tintColor) {
        self.img_button.tintColor = tintColor;
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(NSString * _Nullable, UIControlState))setTitleForState {
    return ^ IMGButtonMaker *(NSString *_Nullable title, UIControlState state) {
        [self.img_button setTitle:title forState:state];
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(UIColor * _Nullable, UIControlState))setTitleColorForState {
    return ^ IMGButtonMaker *(UIColor *_Nullable color, UIControlState state) {
        [self.img_button setTitleColor:color forState:state];
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(UIColor * _Nullable, UIControlState))setTitleShadowColorForState {
    return ^ IMGButtonMaker *(UIColor *_Nullable color, UIControlState state) {
        [self.img_button setTitleShadowColor:color forState:state];
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(UIImage * _Nullable, UIControlState))setImageForState {
    return ^ IMGButtonMaker *(UIImage *_Nullable image, UIControlState state) {
        [self.img_button setImage:image forState:state];
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(UIImage * _Nullable, UIControlState))setBackgroundImageForState {
    return ^ IMGButtonMaker *(UIImage *_Nullable image, UIControlState state) {
        [self.img_button setBackgroundImage:image forState:state];
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(NSAttributedString * _Nullable, UIControlState))setAttributedTitleForState {
    return ^ IMGButtonMaker *(NSAttributedString *_Nullable title, UIControlState state) {
        [self.img_button setAttributedTitle:title forState:state];
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(UIFont * _Nonnull))font {
    return ^ IMGButtonMaker *(UIFont *font) {
        self.img_button.font = font;
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(NSLineBreakMode))lineBreakMode {
    return ^ IMGButtonMaker *(NSLineBreakMode lineBreakMode) {
        self.img_button.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (IMGButtonMaker * _Nonnull (^)(CGSize))titleShadowOffset {
    return ^ IMGButtonMaker *(CGSize titleShadowOffset) {
        self.img_button.titleShadowOffset = titleShadowOffset;
        return self;
    };
}

@end


@implementation UIButton (IMGButtonMaker)

+ (UIButton *)img_makeButton:(void (NS_NOESCAPE ^)(IMGButtonMaker * _Nonnull))block {
    UIButton *button = [[UIButton alloc] init];
    [button img_makeButton:block];
    return button;
}

- (void)img_makeButton:(void (NS_NOESCAPE ^)(IMGButtonMaker * _Nonnull))block {
    IMGButtonMaker *maker = [[IMGButtonMaker alloc] initWithMakable:self];
    block(maker);
}

@end
