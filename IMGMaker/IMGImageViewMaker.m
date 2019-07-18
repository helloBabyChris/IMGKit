//
//  IMGImageViewMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGImageViewMaker.h"

@interface IMGImageViewMaker ()

///
@property (nonatomic, weak) UIImageView *img_imageView;

@end

@implementation IMGImageViewMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_imageView = makable;
    }
    return self;
}

#pragma mark - 自定义

- (UIImageView *)imageView {
    return self.img_imageView;
}

#pragma mark ******************* 属性 *******************

- (IMGImageViewMaker * _Nonnull (^)(UIImage * _Nullable))image {
    return ^ IMGImageViewMaker *(UIImage *_Nullable image) {
        self.img_imageView.image = image;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(UIImage * _Nullable ))highlightedImage {
    return ^ IMGImageViewMaker *(UIImage *highlightedImage) {
        self.img_imageView.highlightedImage = highlightedImage;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^ IMGImageViewMaker *(BOOL userInteractionEnabled) {
        self.img_imageView.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(BOOL))highlighted {
    return ^ IMGImageViewMaker *(BOOL highlighted) {
        self.img_imageView.highlighted = highlighted;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(NSArray<UIImage *> *_Nullable ))animationImages {
    return ^ IMGImageViewMaker *(NSArray<UIImage *> *_Nullable animationImages) {
        self.img_imageView.animationImages = animationImages;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(NSArray<UIImage *> * _Nonnull))highlightedAnimationImages {
    return ^ IMGImageViewMaker *(NSArray<UIImage *> *_Nullable highlightedAnimationImages) {
        self.img_imageView.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(NSTimeInterval))animationDuration {
    return ^ IMGImageViewMaker *(NSTimeInterval animationDuration) {
        self.img_imageView.animationDuration = animationDuration;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(NSInteger))animationRepeatCount {
    return ^ IMGImageViewMaker *(NSInteger animationRepeatCount) {
        self.img_imageView.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(UIColor *_Nullable))tintColor {
    return ^ IMGImageViewMaker *(UIColor *tintColor) {
        self.img_imageView.tintColor = tintColor;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(void))startAnimating {
    return ^ IMGImageViewMaker *(void) {
        [self.img_imageView startAnimating];
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(void))stopAnimating {
    return ^ IMGImageViewMaker *(void) {
        [self.img_imageView stopAnimating];
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(BOOL))adjustsImageWhenAncestorFocused {
    return ^ IMGImageViewMaker *(BOOL adjustsImageWhenAncestorFocused) {
        self.img_imageView.adjustsImageWhenAncestorFocused = adjustsImageWhenAncestorFocused;
        return self;
    };
}

- (IMGImageViewMaker * _Nonnull (^)(BOOL))masksFocusEffectToContents {
    return ^ IMGImageViewMaker *(BOOL masksFocusEffectToContents) {
        self.img_imageView.masksFocusEffectToContents = masksFocusEffectToContents;
        return self;
    };
}

@end

@implementation UIImageView (IMGImageViewMaker)

+ (UIImageView *)img_makeImageView:(void (NS_NOESCAPE ^)(IMGImageViewMaker * _Nonnull))block {
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView img_makeImageView:block];
    return imageView;
}

- (void)img_makeImageView:(void (NS_NOESCAPE ^)(IMGImageViewMaker * _Nonnull))block {
    IMGImageViewMaker *maker = [[IMGImageViewMaker alloc] initWithMakable:self];
    block(maker);
}

@end
