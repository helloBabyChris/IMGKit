//
//  IMGScrollViewMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGViewMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGScrollViewMaker : IMGViewMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UIScrollView *scrollView;

#pragma mark - property

@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^contentOffset)(CGPoint contentOffset);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^contentSize)(CGSize contentSize);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^contentInset)(UIEdgeInsets contentInset);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^adjustedContentInsetDidChange)(void) API_AVAILABLE(ios(11.0),tvos(11.0));
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^contentInsetAdjustmentBehavior)(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior) API_AVAILABLE(ios(11.0),tvos(11.0));
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^delegate)(id <UIScrollViewDelegate>_Nullable delegate);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^directionalLockEnabled)(BOOL directionalLockEnabled);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^bounces)(BOOL bounces);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^alwaysBounceVertical)(BOOL alwaysBounceVertical);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^pagingEnabled)(BOOL pagingEnabled);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^scrollEnabled)(BOOL scrollEnabled);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^scrollIndicatorInsets)(UIEdgeInsets scrollIndicatorInsets);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^indicatorStyle)(UIScrollViewIndicatorStyle indicatorStyle);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^decelerationRate)(CGFloat decelerationRate) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^indexDisplayMode)(UIScrollViewIndexDisplayMode indexDisplayMode) API_AVAILABLE(tvos(10.2));
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^setContentOffsetWithAnimated)(CGPoint contentOffset, BOOL animated);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^scrollRectToVisibleWithAnimated)(CGRect rect, BOOL animated);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^flashScrollIndicators)(void);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^delaysContentTouches)(BOOL delaysContentTouches);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^canCancelContentTouches)(BOOL canCancelContentTouches);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^minimumZoomScale)(CGFloat minimumZoomScale);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^maximumZoomScale)(CGFloat maximumZoomScale);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^zoomScale)(CGFloat zoomScale) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^setZoomScaleWithAnimated)(CGFloat scale, BOOL animated) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^zoomToRectWithAnimated)(CGRect rect, BOOL animated) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^bouncesZoom)(BOOL bouncesZoom);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^scrollsToTop)(BOOL scrollsToTop) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^keyboardDismissMode)(UIScrollViewKeyboardDismissMode keyboardDismissMode) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) IMGScrollViewMaker *(^refreshControl)(UIRefreshControl *_Nullable refreshControl) NS_AVAILABLE_IOS(10_0) __TVOS_PROHIBITED;

@end

@interface UIScrollView (IMGScrollViewMaker)

+ (UIScrollView *)img_makeScrollView:(void(NS_NOESCAPE ^)(IMGScrollViewMaker *make))block;

- (void)img_makeScrollView:(void(NS_NOESCAPE ^)(IMGScrollViewMaker *make))block;

@end

NS_ASSUME_NONNULL_END
