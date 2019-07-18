//
//  IMGScrollViewMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGScrollViewMaker.h"

@interface IMGScrollViewMaker ()

///
@property (nonatomic, weak) UIScrollView *img_scrollView;

@end

@implementation IMGScrollViewMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_scrollView = makable;
    }
    return self;
}

#pragma mark - 自定义

- (UIScrollView *)scrollView {
    return self.img_scrollView;
}

#pragma mark - property

- (IMGScrollViewMaker *(^)(CGPoint))contentOffset {
    return ^ IMGScrollViewMaker *(CGPoint contentOffset) {
        self.img_scrollView.contentOffset = contentOffset;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(CGSize))contentSize {
    return ^ IMGScrollViewMaker *(CGSize contentSize) {
        self.img_scrollView.contentSize = contentSize;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(UIEdgeInsets))contentInset {
    return ^ IMGScrollViewMaker *(UIEdgeInsets contentInset) {
        self.img_scrollView.contentInset = contentInset;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(void))adjustedContentInsetDidChange {
    return ^ IMGScrollViewMaker *(void) {
        [self.img_scrollView adjustedContentInsetDidChange];
        return self;
    };
}

- (IMGScrollViewMaker *(^)(UIScrollViewContentInsetAdjustmentBehavior))contentInsetAdjustmentBehavior {
    return ^ IMGScrollViewMaker *(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior) {
        self.img_scrollView.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(id<UIScrollViewDelegate> _Nullable))delegate {
    return ^ IMGScrollViewMaker *(id <UIScrollViewDelegate>_Nullable delegate) {
        self.img_scrollView.delegate = delegate;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))directionalLockEnabled {
    return ^ IMGScrollViewMaker *(BOOL directionalLockEnabled) {
        self.img_scrollView.directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))bounces {
    return ^ IMGScrollViewMaker *(BOOL bounces) {
        self.img_scrollView.bounces = bounces;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))alwaysBounceVertical {
    return ^ IMGScrollViewMaker *(BOOL alwaysBounceVertical) {
        self.img_scrollView.alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))alwaysBounceHorizontal {
    return ^ IMGScrollViewMaker *(BOOL alwaysBounceHorizontal) {
        self.img_scrollView.alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))pagingEnabled {
    return ^ IMGScrollViewMaker *(BOOL pagingEnabled) {
        self.img_scrollView.pagingEnabled = pagingEnabled;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))scrollEnabled {
    return ^ IMGScrollViewMaker *(BOOL scrollEnabled) {
        self.img_scrollView.scrollEnabled = scrollEnabled;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))showsVerticalScrollIndicator {
    return ^ IMGScrollViewMaker *(BOOL showsVerticalScrollIndicator) {
        self.img_scrollView.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))showsHorizontalScrollIndicator {
    return ^ IMGScrollViewMaker *(BOOL showsHorizontalScrollIndicator) {
        self.img_scrollView.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(UIEdgeInsets))scrollIndicatorInsets {
    return ^ IMGScrollViewMaker *(UIEdgeInsets scrollIndicatorInsets) {
        self.img_scrollView.scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(UIScrollViewIndicatorStyle))indicatorStyle {
    return ^ IMGScrollViewMaker *(UIScrollViewIndicatorStyle indicatorStyle) {
        self.img_scrollView.indicatorStyle = indicatorStyle;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(CGFloat))decelerationRate {
    return ^ IMGScrollViewMaker *(CGFloat decelerationRate) {
        self.img_scrollView.decelerationRate = decelerationRate;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(UIScrollViewIndexDisplayMode))indexDisplayMode {
    return ^ IMGScrollViewMaker *(UIScrollViewIndexDisplayMode indexDisplayMode) {
        self.img_scrollView.indexDisplayMode = indexDisplayMode;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(CGPoint, BOOL))setContentOffsetWithAnimated {
    return ^ IMGScrollViewMaker *(CGPoint contentOffset, BOOL animated) {
        [self.img_scrollView setContentOffset:contentOffset animated:animated];
        return self;
    };
}

- (IMGScrollViewMaker *(^)(CGRect, BOOL))scrollRectToVisibleWithAnimated {
    return ^ IMGScrollViewMaker *(CGRect rect, BOOL animated) {
        [self.img_scrollView scrollRectToVisible:rect animated:animated];
        return self;
    };
}

- (IMGScrollViewMaker *(^)(void))flashScrollIndicators {
    return ^ IMGScrollViewMaker *(void) {
        [self.img_scrollView flashScrollIndicators];
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))delaysContentTouches {
    return ^ IMGScrollViewMaker *(BOOL delaysContentTouches) {
        self.img_scrollView.delaysContentTouches = delaysContentTouches;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))canCancelContentTouches {
    return ^ IMGScrollViewMaker *(BOOL canCancelContentTouches) {
        self.img_scrollView.canCancelContentTouches = canCancelContentTouches;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(CGFloat))minimumZoomScale {
    return ^ IMGScrollViewMaker *(CGFloat minimumZoomScale) {
        self.img_scrollView.minimumZoomScale = minimumZoomScale;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(CGFloat))maximumZoomScale {
    return ^ IMGScrollViewMaker *(CGFloat maximumZoomScale) {
        self.img_scrollView.maximumZoomScale = maximumZoomScale;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(CGFloat))zoomScale {
    return ^ IMGScrollViewMaker *(CGFloat zoomScale) {
        self.img_scrollView.zoomScale = zoomScale;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(CGFloat, BOOL))setZoomScaleWithAnimated {
    return ^ IMGScrollViewMaker *(CGFloat scale, BOOL animated) {
        [self.img_scrollView setZoomScale:scale animated:animated];
        return self;
    };
}

- (IMGScrollViewMaker *(^)(CGRect, BOOL))zoomToRectWithAnimated {
    return ^ IMGScrollViewMaker *(CGRect rect, BOOL animated) {
        [self.img_scrollView zoomToRect:rect animated:animated];
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))bouncesZoom {
    return ^ IMGScrollViewMaker *(BOOL bouncesZoom) {
        self.img_scrollView.bouncesZoom = bouncesZoom;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(BOOL))scrollsToTop {
    return ^ IMGScrollViewMaker *(BOOL scrollsToTop) {
        self.img_scrollView.scrollsToTop = scrollsToTop;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(UIScrollViewKeyboardDismissMode))keyboardDismissMode {
    return ^ IMGScrollViewMaker *(UIScrollViewKeyboardDismissMode keyboardDismissMode) {
        self.img_scrollView.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}

- (IMGScrollViewMaker *(^)(UIRefreshControl * _Nullable))refreshControl {
    return ^ IMGScrollViewMaker *(UIRefreshControl *_Nullable refreshControl) {
        self.img_scrollView.refreshControl = refreshControl;
        return self;
    };
}

@end

@implementation UIScrollView (IMGScrollViewMaker)

+ (UIScrollView *)img_makeScrollView:(void (NS_NOESCAPE ^)(IMGScrollViewMaker *))block {
    UIScrollView *scroll = [[UIScrollView alloc] init];
    [scroll img_makeScrollView:block];
    return scroll;
}

- (void)img_makeScrollView:(void (NS_NOESCAPE ^)(IMGScrollViewMaker *))block {
    IMGScrollViewMaker *maker = [[IMGScrollViewMaker alloc] initWithMakable:self];
    block(maker);
}

@end
