//
//  IMGImageViewMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGViewMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGImageViewMaker : IMGViewMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UIImageView *imageView;

#pragma mark - property

@property (nonatomic, copy, readonly) IMGImageViewMaker *(^image)(UIImage *_Nullable image);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^highlightedImage)(UIImage *_Nullable highlightedImage) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^userInteractionEnabled)(BOOL userInteractionEnabled);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^highlighted)(BOOL highlighted) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^animationImages)(NSArray<UIImage *> *_Nullable animationImages);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^highlightedAnimationImages)(NSArray<UIImage *> *_Nullable highlightedAnimationImages) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^animationDuration)(NSTimeInterval animationDuration);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^animationRepeatCount)(NSInteger animationRepeatCount);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^tintColor)(UIColor *_Nullable tintColor) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^startAnimating)(void);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^stopAnimating)(void);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^adjustsImageWhenAncestorFocused)(BOOL adjustsImageWhenAncestorFocused) UIKIT_AVAILABLE_TVOS_ONLY(9_0);
@property (nonatomic, copy, readonly) IMGImageViewMaker *(^masksFocusEffectToContents)(BOOL masksFocusEffectToContents) UIKIT_AVAILABLE_TVOS_ONLY(11_0);

@end


@interface UIImageView (IMGImageViewMaker)

+ (UIImageView *)img_makeImageView:(void(NS_NOESCAPE ^)(IMGImageViewMaker *make))block;

- (void)img_makeImageView:(void(NS_NOESCAPE ^)(IMGImageViewMaker *make))block;

@end

NS_ASSUME_NONNULL_END
