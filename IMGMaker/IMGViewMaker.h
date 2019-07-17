//
//  IMGViewMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/17.
//  Copyright © 2019 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IMGViewMaker : NSObject

/// 不可用
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)init NS_UNAVAILABLE;
/// 唯一初始化方法
- (instancetype)initWithMakable:(UIView *)makable NS_DESIGNATED_INITIALIZER;

#pragma mark - 自定义

/// 中心点
@property (nonatomic, copy, readonly) IMGViewMaker * (^origin)(CGPoint origin);
/// 尺寸
@property (nonatomic, copy, readonly) IMGViewMaker * (^size)(CGSize size);
/// 起始x轴点
@property (nonatomic, copy, readonly) IMGViewMaker * (^x)(CGFloat x);
/// 起始y轴点
@property (nonatomic, copy, readonly) IMGViewMaker * (^y)(CGFloat y);
/// 宽度
@property (nonatomic, copy, readonly) IMGViewMaker * (^width)(CGFloat width);
/// 高度
@property (nonatomic, copy, readonly) IMGViewMaker * (^height)(CGFloat height);
/// 中心点x轴
@property (nonatomic, copy, readonly) IMGViewMaker * (^centerX)(CGFloat centerX);
/// 中心点y轴
@property (nonatomic, copy, readonly) IMGViewMaker * (^centerY)(CGFloat centerY);
/// 添加到父视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^addToSupview)(UIView *superview);

/// 视图
@property (nonatomic, strong, readonly) UIView *view;

#pragma mark - 属性

/// 是否可被响应
@property (nonatomic, copy, readonly) IMGViewMaker * (^userInteractionEnabled)(BOOL userInteractionEnabled);
/// 标识
@property (nonatomic, copy, readonly) IMGViewMaker * (^tag)(NSInteger tag);
/// 阿拉伯适配
@property (nonatomic, copy, readonly) IMGViewMaker * (^semanticContentAttribute)(UISemanticContentAttribute semanticContentAttribute) NS_AVAILABLE_IOS(9_0);

#pragma mark ******************* UIViewGeometry *******************
/// 在父视图所在位置
@property (nonatomic, copy, readonly) IMGViewMaker * (^frame)(CGRect frame);
/// 本身所在位置
@property (nonatomic, copy, readonly) IMGViewMaker * (^bounds)(CGRect bounds);
/// 中心点
@property (nonatomic, copy, readonly) IMGViewMaker * (^center)(CGPoint center);
/// 变换
@property (nonatomic, copy, readonly) IMGViewMaker * (^transform)(CGAffineTransform transform);
/// 映射
@property (nonatomic, copy, readonly) IMGViewMaker * (^contentScaleFactor)(CGFloat contentScaleFactor);
/// 多点触控
@property (nonatomic, copy, readonly) IMGViewMaker * (^multipleTouchEnabled)(BOOL multipleTouchEnabled);
/// 独家触控响应
@property (nonatomic, copy, readonly) IMGViewMaker * (^exclusiveTouch)(BOOL exclusiveTouch);
/// 子视图自动调整
@property (nonatomic, copy, readonly) IMGViewMaker * (^autoresizesSubviews)(BOOL autoresizesSubviews);
/// 调整策略
@property (nonatomic, copy, readonly) IMGViewMaker * (^autoresizingMask)(UIViewAutoresizing autoresizingMask);
/// 自动适配
@property (nonatomic, copy, readonly) IMGViewMaker * (^sizeToFit)(void);

#pragma mark ******************* UIViewHierarchy *******************

/// 父视图移除
@property (nonatomic, copy, readonly) IMGViewMaker * (^removeFromSuperview)(void);
/// 添加子视图在第几位
@property (nonatomic, copy, readonly) IMGViewMaker * (^insertSubviewAtIndex)(UIView *view, NSInteger index);
/// 交换子视图位置
@property (nonatomic, copy, readonly) IMGViewMaker * (^exchangeSubviewFromOldIndexToNewIndex)(NSInteger index1, NSInteger index2);
/// 添加子视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^addSubview)(UIView *view);
/// 添加视图在视图下
@property (nonatomic, copy, readonly) IMGViewMaker * (^insertSubviewBelowSubview)(UIView *view, UIView *siblingSubview);
/// 添加视图在视图上
@property (nonatomic, copy, readonly) IMGViewMaker * (^insertSubviewAboveSubview)(UIView *view, UIView *siblingSubview);
/// 视图带到最上层
@property (nonatomic, copy, readonly) IMGViewMaker * (^bringSubviewToFront)(UIView *view);
/// 视图放置到最下层
@property (nonatomic, copy, readonly) IMGViewMaker * (^sendSubviewToBack)(UIView *view);
/// 已经加入视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^didAddSubview)(UIView *subview);
/// 将要移除视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^willRemoveSubview)(UIView *subview);
/// 将要移动到
@property (nonatomic, copy, readonly) IMGViewMaker * (^willMoveToSuperview)(UIView * _Nullable newSuperview);
/// 已经移动到父视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^didMoveToSuperview)(void);
/// 将要移动到
@property (nonatomic, copy, readonly) IMGViewMaker * (^willMoveToWindow)(UIWindow * _Nullable newWindow);
/// 已经移动到
@property (nonatomic, copy, readonly) IMGViewMaker * (^didMoveToWindow)(void);
/// 需要更新
@property (nonatomic, copy, readonly) IMGViewMaker * (^setNeedsLayout)(void);
/// 如果需要更新则更新
@property (nonatomic, copy, readonly) IMGViewMaker * (^layoutIfNeeded)(void);
/// 更新子视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^layoutSubviews)(void);
/// 视图边框距离
@property (nonatomic, copy, readonly) IMGViewMaker * (^layoutMargins)(UIEdgeInsets layoutMargins) NS_AVAILABLE_IOS(8_0);
/// 视图边框距离
@property (nonatomic, copy, readonly) IMGViewMaker * (^directionalLayoutMargins)(NSDirectionalEdgeInsets directionalLayoutMargins) API_AVAILABLE(ios(11.0),tvos(11.0));
/// 视图父视图和子视图的传递
@property (nonatomic, copy, readonly) IMGViewMaker * (^preservesSuperviewLayoutMargins)(BOOL preservesSuperviewLayoutMargins) NS_AVAILABLE_IOS(8_0);
/// 边距到安全区域
@property (nonatomic, copy, readonly) IMGViewMaker * (^insetsLayoutMarginsFromSafeArea)(BOOL insetsLayoutMarginsFromSafeArea) API_AVAILABLE(ios(11.0),tvos(11.0));
/// 边距发生改变
@property (nonatomic, copy, readonly) IMGViewMaker * (^layoutMarginsDidChange)(void) NS_AVAILABLE_IOS(8_0);
/// 安全区域发生改变
@property (nonatomic, copy, readonly) IMGViewMaker * (^safeAreaInsetsDidChange)(void) API_AVAILABLE(ios(11.0),tvos(11.0));

#pragma mark ******************* UIViewRendering *******************

/// 构建视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^drawRect)(CGRect rect);
/// 需要重新绘制
@property (nonatomic, copy, readonly) IMGViewMaker * (^setNeedsDisplay)(void);
@property (nonatomic, copy, readonly) IMGViewMaker * (^setNeedsDisplayInRect)(CGRect rect);
/// 剪切
@property (nonatomic, copy, readonly) IMGViewMaker * (^clipsToBounds)(BOOL clipsToBounds);
/// 背景色
@property (nonatomic, copy, readonly) IMGViewMaker * (^backgroundColor)(UIColor *_Nullable backgroundColor);
/// 透明度
@property (nonatomic, copy, readonly) IMGViewMaker * (^alpha)(CGFloat alpha);
/// 是否透明
@property (nonatomic, copy, readonly) IMGViewMaker * (^opaque)(BOOL opaque);
/// 绘制前是否绘画
@property (nonatomic, copy, readonly) IMGViewMaker * (^clearsContextBeforeDrawing)(BOOL clearsContextBeforeDrawing);
/// 隐藏
@property (nonatomic, copy, readonly) IMGViewMaker * (^hidden)(BOOL hidden);
/// 填充方式
@property (nonatomic, copy, readonly) IMGViewMaker * (^contentMode)(UIViewContentMode contentMode);
/// 拉伸
@property (nonatomic, copy, readonly) IMGViewMaker * (^contentStretch)(CGRect contentStretch) NS_DEPRECATED_IOS(3_0,6_0) __TVOS_PROHIBITED;
/// 浮层
@property (nonatomic, copy, readonly) IMGViewMaker * (^maskView)(UIView *_Nullable maskView) NS_AVAILABLE_IOS(8_0);
/// 色值
@property (nonatomic, copy, readonly) IMGViewMaker * (^tintColor)(UIColor *_Nullable tintColor) NS_AVAILABLE_IOS(7_0);
/// 色值模式
@property (nonatomic, copy, readonly) IMGViewMaker * (^tintAdjustmentMode)(UIViewTintAdjustmentMode tintAdjustmentMode) NS_AVAILABLE_IOS(7_0);
/// 色值发生改变
@property (nonatomic, copy, readonly) IMGViewMaker * (^tintColorDidChange)(void) NS_AVAILABLE_IOS(7_0);

#pragma mark ******************* UIViewGestureRecognizers *******************

/// 手势
@property (nonatomic, copy, readonly) IMGViewMaker * (^gestureRecognizers)(NSArray <__kindof UIGestureRecognizer *>* _Nullable gestureRecognizers);
/// 添加手势
@property (nonatomic, copy, readonly) IMGViewMaker * (^addGestureRecognizer)(UIGestureRecognizer *gestureRecognizer);
/// 移除手势
@property (nonatomic, copy, readonly) IMGViewMaker * (^removeGestureRecognizer)(UIGestureRecognizer *gestureRecognizer);

#pragma mark ******************* UIViewMotionEffects *******************

/// 添加视觉差视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^addMotionEffect)(UIMotionEffect *effect) NS_AVAILABLE_IOS(7_0);
/// 移除视觉差视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^removeMotionEffect)(UIMotionEffect *effect) NS_AVAILABLE_IOS(7_0);
/// 视觉差视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^motionEffects)(NSArray <__kindof  UIMotionEffect *> *motionEffects) NS_AVAILABLE_IOS(7_0);

#pragma mark ******************* UIConstraintBasedLayoutInstallingConstraints *******************

/// 添加约束
@property (nonatomic, copy, readonly) IMGViewMaker * (^addConstraint)(NSLayoutConstraint *constraint) NS_AVAILABLE_IOS(6_0);
/// 添加约束
@property (nonatomic, copy, readonly) IMGViewMaker * (^addConstraints)(NSArray<__kindof NSLayoutConstraint *> *constraints) NS_AVAILABLE_IOS(6_0);
/// 移除约束
@property (nonatomic, copy, readonly) IMGViewMaker * (^removeConstraint)(NSLayoutConstraint *constraint) NS_AVAILABLE_IOS(6_0);
/// 移除约束
@property (nonatomic, copy, readonly) IMGViewMaker * (^removeConstraints)(NSArray<__kindof NSLayoutConstraint *> *constraints) NS_AVAILABLE_IOS(6_0);

#pragma mark ******************* UIConstraintBasedLayoutCoreMethods *******************

/// 如果需要更新
@property (nonatomic, copy, readonly) IMGViewMaker * (^updateConstraintsIfNeeded)(void) NS_AVAILABLE_IOS(6_0);
/// 更新约束
@property (nonatomic, copy, readonly) IMGViewMaker * (^updateConstraints)(void) NS_AVAILABLE_IOS(6_0);
/// 设置需要更新约束
@property (nonatomic, copy, readonly) IMGViewMaker * (^setNeedsUpdateConstraints)(void) NS_AVAILABLE_IOS(6_0);
/// 约束布局
@property (nonatomic, copy, readonly) IMGViewMaker * (^translatesAutoresizingMaskIntoConstraints)(BOOL translatesAutoresizingMaskIntoConstraints);

#pragma mark ******************* UIConstraintBasedLayoutLayering *******************

/// 内视图
@property (nonatomic, copy, readonly) IMGViewMaker * (^invalidateIntrinsicContentSize)(void) NS_AVAILABLE_IOS(6_0);
/// setContentHuggingPriorityForAxis
@property (nonatomic, copy, readonly) IMGViewMaker * (^setContentHuggingPriorityForAxis)(UILayoutPriority priority, UILayoutConstraintAxis axis) NS_AVAILABLE_IOS(6_0);
/// setContentCompressionResistancePriorityForAxis
@property (nonatomic, copy, readonly) IMGViewMaker * (^setContentCompressionResistancePriorityForAxis)(UILayoutPriority priority, UILayoutConstraintAxis axis) NS_AVAILABLE_IOS(6_0);

#pragma mark ******************* UILayoutGuideSupport *******************

/// 添加虚拟占位对象
@property (nonatomic, copy, readonly) IMGViewMaker * (^addLayoutGuide)(UILayoutGuide *layoutGuide) NS_AVAILABLE_IOS(9_0);
/// 移除虚拟占位对象
@property (nonatomic, copy, readonly) IMGViewMaker * (^removeLayoutGuide)(UILayoutGuide *layoutGuide) NS_AVAILABLE_IOS(9_0);

#pragma mark ******************* UIConstraintBasedLayoutDebugging *******************

/// 通用应用程序
@property (nonatomic, copy, readonly) IMGViewMaker * (^exerciseAmbiguityInLayout)(void) NS_AVAILABLE_IOS(6_0);

#pragma mark ******************* UIStateRestoration *******************

/// 标识符
@property (nonatomic, copy, readonly) IMGViewMaker * (^restorationIdentifier)(NSString *restorationIdentifier) NS_AVAILABLE_IOS(6_0);
/// 归档
@property (nonatomic, copy, readonly) IMGViewMaker * (^encodeRestorableStateWithCoder)(NSCoder *coder) NS_AVAILABLE_IOS(6_0);
/// 解档
@property (nonatomic, copy, readonly) IMGViewMaker * (^decodeRestorableStateWithCoder)(NSCoder *coder) NS_AVAILABLE_IOS(6_0);

@end

@interface UIView (IMGViewMaker)

+ (instancetype)img_makeView:(void(NS_NOESCAPE ^)(IMGViewMaker *make))block;

- (void)img_makeView:(void(NS_NOESCAPE ^)(IMGViewMaker *make))block;

@end


NS_ASSUME_NONNULL_END
