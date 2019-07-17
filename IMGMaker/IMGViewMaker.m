//
//  IMGViewMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/17.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGViewMaker.h"

@interface IMGViewMaker ()

/// 被修改
@property (nonatomic, strong, readwrite) UIView *makable;

@end

@implementation IMGViewMaker

/// 唯一初始化方法
- (instancetype)initWithMakable:(UIView *)makable {
    self = [super init];
    if (self) {
        NSAssert(makable, @"makable can not be nil !");
        _makable = makable;
    }
    return self;
}

#pragma mark - 自定义

/// 中心点
- (IMGViewMaker * _Nonnull (^)(CGPoint))origin {
    return ^ IMGViewMaker *(CGPoint origin) {
        CGRect frame = self.makable.frame;
        frame.origin = origin;
        self.makable.frame = frame;
        return self;
    };
}
/// 尺寸
- (IMGViewMaker * _Nonnull (^)(CGSize))size {
    return ^ IMGViewMaker *(CGSize size) {
        CGRect frame = self.makable.frame;
        frame.size = size;
        self.makable.frame = frame;
        return self;
    };
}
/// 起始x轴点
- (IMGViewMaker * _Nonnull (^)(CGFloat))x {
    return ^ IMGViewMaker *(CGFloat x) {
        CGRect frame = self.makable.frame;
        frame.origin.x = x;
        self.makable.frame = frame;
        return self;
    };
}
/// 起始y轴点
- (IMGViewMaker * _Nonnull (^)(CGFloat))y {
    return ^ IMGViewMaker *(CGFloat y) {
        CGRect frame = self.makable.frame;
        frame.origin.y = y;
        self.makable.frame = frame;
        return self;
    };
}
/// 宽度
- (IMGViewMaker * _Nonnull (^)(CGFloat))width {
    return ^ IMGViewMaker *(CGFloat width) {
        CGRect frame = self.makable.frame;
        frame.size.width = width;
        self.makable.frame = frame;
        return self;
    };
}
/// 高度
- (IMGViewMaker * _Nonnull (^)(CGFloat))height {
    return ^ IMGViewMaker *(CGFloat height) {
        CGRect frame = self.makable.frame;
        frame.size.height = height;
        self.makable.frame = frame;
        return self;
    };
}
/// 中心点x轴
- (IMGViewMaker * _Nonnull (^)(CGFloat))centerX {
    return ^ IMGViewMaker *(CGFloat centerX) {
        CGPoint center = self.makable.center;
        center.x = centerX;
        self.makable.center = center;
        return self;
    };
}
/// 中心点y轴
- (IMGViewMaker * _Nonnull (^)(CGFloat))centerY {
    return ^ IMGViewMaker *(CGFloat centerY) {
        CGPoint center = self.makable.center;
        center.y = centerY;
        self.makable.center = center;
        return self;
    };
}
/// 添加到父视图
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))addToSupview {
    return ^ IMGViewMaker *(UIView * _Nonnull supview) {
        [supview addSubview:self.makable];
        return self;
    };
}
/// 视图
- (UIView *)view {
    return self.makable;
}

#pragma mark - 属性

/// 是否可被响应
- (IMGViewMaker * _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^ IMGViewMaker *(BOOL userInteractionEnabled) {
        self.makable.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}
/// 标识
- (IMGViewMaker * _Nonnull (^)(NSInteger))tag {
    return ^ IMGViewMaker *(NSInteger tag) {
        self.makable.tag = tag;
        return self;
    };
}
/// 阿拉伯适配
- (IMGViewMaker * _Nonnull (^)(UISemanticContentAttribute))semanticContentAttribute {
    return ^ IMGViewMaker *(UISemanticContentAttribute semanticContentAttribute) {
        self.makable.semanticContentAttribute = semanticContentAttribute;
        return self;
    };
}
#pragma mark ******************* UIViewGeometry *******************
/// 在父视图所在位置
- (IMGViewMaker * _Nonnull (^)(CGRect))frame {
    return ^ IMGViewMaker *(CGRect frame) {
        self.makable.frame = frame;
        return self;
    };
}
/// 本身所在位置
- (IMGViewMaker * _Nonnull (^)(CGRect))bounds {
    return ^ IMGViewMaker *(CGRect bounds) {
        self.makable.bounds = bounds;
        return self;
    };
}
/// 中心点
- (IMGViewMaker * _Nonnull (^)(CGPoint))center {
    return ^ IMGViewMaker *(CGPoint center) {
        self.makable.center = center;
        return self;
    };
}
/// 变换
- (IMGViewMaker * _Nonnull (^)(CGAffineTransform))transform {
    return ^ IMGViewMaker *(CGAffineTransform transform) {
        self.makable.transform = transform;
        return self;
    };
}
/// 映射
- (IMGViewMaker * _Nonnull (^)(CGFloat))contentScaleFactor {
    return ^ IMGViewMaker *(CGFloat contentScaleFactor) {
        self.makable.contentScaleFactor = contentScaleFactor;
        return self;
    };
}
/// 多点触控
- (IMGViewMaker * _Nonnull (^)(BOOL))multipleTouchEnabled {
    return ^ IMGViewMaker *(BOOL multipleTouchEnabled) {
        self.makable.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}
/// 独家触控响应
- (IMGViewMaker * _Nonnull (^)(BOOL))exclusiveTouch {
    return ^ IMGViewMaker *(BOOL exclusiveTouch) {
        self.makable.exclusiveTouch = exclusiveTouch;
        return self;
    };
}
/// 子视图自动调整
- (IMGViewMaker * _Nonnull (^)(BOOL))autoresizesSubviews {
    return ^ IMGViewMaker *(BOOL autoresizesSubviews) {
        self.makable.autoresizesSubviews = autoresizesSubviews;
        return self;
    };
}
/// 调整策略
- (IMGViewMaker * _Nonnull (^)(UIViewAutoresizing))autoresizingMask {
    return ^ IMGViewMaker *(UIViewAutoresizing autoresizingMask) {
        self.makable.autoresizingMask = autoresizingMask;
        return self;
    };
}
/// 自动适配
- (IMGViewMaker * _Nonnull (^)(void))sizeToFit {
    return ^ IMGViewMaker *(void) {
        [self.makable sizeToFit];
        return self;
    };
}

#pragma mark ******************* UIViewHierarchy *******************

/// 父视图移除
- (IMGViewMaker * _Nonnull (^)(void))removeFromSuperview {
    return ^ IMGViewMaker *(void) {
        [self.makable removeFromSuperview];
        return self;
    };
}
/// 添加子视图在第几位
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull, NSInteger))insertSubviewAtIndex {
    return ^ IMGViewMaker *(UIView * _Nonnull subview, NSInteger index) {
        [self.makable insertSubview:subview atIndex:index];
        return self;
    };
}
/// 交换子视图位置
- (IMGViewMaker * _Nonnull (^)(NSInteger, NSInteger))exchangeSubviewFromOldIndexToNewIndex {
    return ^ IMGViewMaker *(NSInteger index1, NSInteger index2) {
        [self.makable exchangeSubviewAtIndex:index1 withSubviewAtIndex:index2];
        return self;
    };
}
/// 添加子视图
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))addSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.makable addSubview:subview];
        return self;
    };
}
/// 添加视图在视图下
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull, UIView * _Nonnull))insertSubviewBelowSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview, UIView * _Nonnull siblingSubview) {
        [self.makable insertSubview:subview belowSubview:siblingSubview];
        return self;
    };
}
/// 添加视图在视图上
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull, UIView * _Nonnull))insertSubviewAboveSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview, UIView * _Nonnull siblingSubview) {
        [self.makable insertSubview:subview aboveSubview:siblingSubview];
        return self;
    };
}
/// 视图带到最上层
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))bringSubviewToFront {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.makable bringSubviewToFront:subview];
        return self;
    };
}
/// 视图放置到最下层
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))sendSubviewToBack {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.makable sendSubviewToBack:subview];
        return self;
    };
}
/// 已经加入视图
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))didAddSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.makable didAddSubview:subview];
        return self;
    };
}
/// 将要移除视图
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))willRemoveSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.makable willRemoveSubview:subview];
        return self;
    };
}
/// 将要移动到
- (IMGViewMaker * _Nonnull (^)(UIView * _Nullable))willMoveToSuperview {
    return ^ IMGViewMaker *(UIView * _Nonnull newSuperview) {
        [self.makable willMoveToSuperview:newSuperview];
        return self;
    };
}
/// 已经移动到父视图
- (IMGViewMaker * _Nonnull (^)(void))didMoveToSuperview {
    return ^ IMGViewMaker *(void) {
        [self.makable didMoveToSuperview];
        return self;
    };
}
/// 将要移动到
- (IMGViewMaker * _Nonnull (^)(UIWindow * _Nullable))willMoveToWindow {
    return ^ IMGViewMaker *(UIWindow * _Nullable newWindow) {
        [self.makable willMoveToWindow:newWindow];
        return self;
    };
}
/// 已经移动到
- (IMGViewMaker * _Nonnull (^)(void))didMoveToWindow {
    return ^ IMGViewMaker *(void) {
        [self.makable didMoveToWindow];
        return self;
    };
}
/// 需要更新
- (IMGViewMaker * _Nonnull (^)(void))setNeedsLayout {
    return ^ IMGViewMaker *(void) {
        [self.makable setNeedsLayout];
        return self;
    };
}
/// 如果需要更新则更新
- (IMGViewMaker * _Nonnull (^)(void))layoutIfNeeded {
    return ^ IMGViewMaker *(void) {
        [self.makable layoutIfNeeded];
        return self;
    };
}
/// 更新子视图
- (IMGViewMaker * _Nonnull (^)(void))layoutSubviews {
    return ^ IMGViewMaker *(void) {
        [self.makable layoutSubviews];
        return self;
    };
}
/// 视图边框距离
- (IMGViewMaker * _Nonnull (^)(UIEdgeInsets))layoutMargins {
    return ^ IMGViewMaker *(UIEdgeInsets layoutMargins) {
        self.makable.layoutMargins = layoutMargins;
        return self;
    };
}
/// 视图边框距离
- (IMGViewMaker * _Nonnull (^)(NSDirectionalEdgeInsets))directionalLayoutMargins {
    return ^ IMGViewMaker *(NSDirectionalEdgeInsets directionalLayoutMargins) {
        self.makable.directionalLayoutMargins = directionalLayoutMargins;
        return self;
    };
}
/// 视图父视图和子视图的传递
- (IMGViewMaker * _Nonnull (^)(BOOL))preservesSuperviewLayoutMargins {
    return ^ IMGViewMaker *(BOOL preservesSuperviewLayoutMargins) {
        self.makable.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins;
        return self;
    };
}
/// 边距到安全区域
- (IMGViewMaker * _Nonnull (^)(BOOL))insetsLayoutMarginsFromSafeArea {
    return ^ IMGViewMaker *(BOOL insetsLayoutMarginsFromSafeArea) {
        self.makable.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea;
        return self;
    };
}
/// 边距发生改变
- (IMGViewMaker * _Nonnull (^)(void))layoutMarginsDidChange {
    return ^ IMGViewMaker *(void) {
        [self.makable layoutMarginsDidChange];
        return self;
    };
}
/// 安全区域发生改变
- (IMGViewMaker * _Nonnull (^)(void))safeAreaInsetsDidChange {
    return ^ IMGViewMaker *(void) {
        [self.makable safeAreaInsetsDidChange];
        return self;
    };
}

#pragma mark ******************* UIViewRendering *******************

/// 构建视图
- (IMGViewMaker * _Nonnull (^)(CGRect))drawRect {
    return ^ IMGViewMaker *(CGRect rect) {
        [self.makable drawRect:rect];
        return self;
    };
}
/// 需要重新绘制
- (IMGViewMaker * _Nonnull (^)(void))setNeedsDisplay {
    return ^ IMGViewMaker *(void) {
        [self.makable setNeedsDisplay];
        return self;
    };
}
- (IMGViewMaker * _Nonnull (^)(CGRect))setNeedsDisplayInRect {
    return ^ IMGViewMaker *(CGRect drawRect) {
        [self.makable setNeedsDisplayInRect:drawRect];
        return self;
    };
}
/// 剪切
- (IMGViewMaker * _Nonnull (^)(BOOL))clipsToBounds {
    return ^ IMGViewMaker *(BOOL clipsToBounds) {
        self.makable.clipsToBounds = clipsToBounds;
        return self;
    };
}
/// 背景色
- (IMGViewMaker * _Nonnull (^)(UIColor *_Nullable))backgroundColor {
    return ^ IMGViewMaker *(UIColor *_Nullable backgroundColor) {
        self.makable.backgroundColor = backgroundColor;
        return self;
    };
}
/// 透明度
- (IMGViewMaker * _Nonnull (^)(CGFloat))alpha {
    return ^ IMGViewMaker *(CGFloat alpha) {
        self.makable.alpha = alpha;
        return self;
    };
}
/// 是否透明
- (IMGViewMaker * _Nonnull (^)(BOOL))opaque {
    return ^ IMGViewMaker *(BOOL opaque) {
        self.makable.opaque = opaque;
        return self;
    };
}
/// 绘制前是否绘画
- (IMGViewMaker * _Nonnull (^)(BOOL))clearsContextBeforeDrawing {
    return ^ IMGViewMaker *(BOOL clearsContextBeforeDrawing) {
        self.makable.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}
/// 隐藏
- (IMGViewMaker * _Nonnull (^)(BOOL))hidden {
    return ^ IMGViewMaker *(BOOL hidden) {
        self.makable.hidden = hidden;
        return self;
    };
}
/// 填充方式
- (IMGViewMaker * _Nonnull (^)(UIViewContentMode))contentMode {
    return ^ IMGViewMaker *(UIViewContentMode contentMode) {
        self.makable.contentMode = contentMode;
        return self;
    };
}
/// 拉伸
- (IMGViewMaker * _Nonnull (^)(CGRect))contentStretch {
    return ^ IMGViewMaker *(CGRect contentStretch) {
        self.makable.contentStretch = contentStretch;
        return self;
    };
}
/// 浮层
- (IMGViewMaker * _Nonnull (^)(UIView *))maskView {
    return ^ IMGViewMaker *(UIView *maskView) {
        self.makable.maskView = maskView;
        return self;
    };
}
/// 色值
- (IMGViewMaker * _Nonnull (^)(UIColor *))tintColor {
    return ^ IMGViewMaker *(UIColor *tintColor) {
        self.makable.tintColor = tintColor;
        return self;
    };
}
/// 色值模式
- (IMGViewMaker * _Nonnull (^)(UIViewTintAdjustmentMode))tintAdjustmentMode {
    return ^ IMGViewMaker *(UIViewTintAdjustmentMode tintAdjustmentMode) {
        self.makable.tintAdjustmentMode = tintAdjustmentMode;
        return self;
    };
}
/// 色值发生改变
- (IMGViewMaker * _Nonnull (^)(void))tintColorDidChange {
    return ^ IMGViewMaker *(void) {
        [self.makable tintColorDidChange];
        return self;
    };
}

#pragma mark ******************* UIViewGestureRecognizers *******************

/// 手势
- (IMGViewMaker * _Nonnull (^)(NSArray <__kindof UIGestureRecognizer *>*))gestureRecognizers {
    return ^ IMGViewMaker *(NSArray <__kindof UIGestureRecognizer *>* _Nullable gestureRecognizers) {
        self.makable.gestureRecognizers = gestureRecognizers;
        return self;
    };
}
/// 添加手势
- (IMGViewMaker * _Nonnull (^)(UIGestureRecognizer *))addGestureRecognizer {
    return ^ IMGViewMaker *(UIGestureRecognizer *gestureRecognizer) {
        [self.makable removeGestureRecognizer:gestureRecognizer];
        return self;
    };
}
/// 移除手势
- (IMGViewMaker * _Nonnull (^)(UIGestureRecognizer *))removeGestureRecognizer {
    return ^ IMGViewMaker *(UIGestureRecognizer *gestureRecognizer) {
        [self.makable addGestureRecognizer:gestureRecognizer];
        return self;
    };
}

#pragma mark ******************* UIViewMotionEffects *******************

/// 添加视觉差视图
- (IMGViewMaker * _Nonnull (^)(UIMotionEffect *))addMotionEffect {
    return ^ IMGViewMaker *(UIMotionEffect *effect) {
        [self.makable addMotionEffect:effect];
        return self;
    };
}
/// 移除视觉差视图
- (IMGViewMaker * _Nonnull (^)(UIMotionEffect *))removeMotionEffect {
    return ^ IMGViewMaker *(UIMotionEffect *effect) {
        [self.makable removeMotionEffect:effect];
        return self;
    };
}
/// 视觉差视图
- (IMGViewMaker * _Nonnull (^)(NSArray <__kindof  UIMotionEffect *> *))motionEffects {
    return ^ IMGViewMaker *(NSArray <__kindof UIMotionEffect *> *motionEffects) {
        self.makable.motionEffects = motionEffects;
        return self;
    };
}

#pragma mark ******************* UIConstraintBasedLayoutInstallingConstraints *******************

/// 添加约束
- (IMGViewMaker * _Nonnull (^)(NSLayoutConstraint *))addConstraint {
    return ^ IMGViewMaker *(NSLayoutConstraint *constraint) {
        [self.makable addConstraint:constraint];
        return self;
    };
}
/// 添加约束
- (IMGViewMaker * _Nonnull (^)(NSArray<__kindof NSLayoutConstraint *> *))addConstraints {
    return ^ IMGViewMaker *(NSArray<__kindof NSLayoutConstraint *> *constraints) {
        [self.makable addConstraints:constraints];
        return self;
    };
}
/// 移除约束
- (IMGViewMaker * _Nonnull (^)(NSLayoutConstraint *))removeConstraint {
    return ^ IMGViewMaker *(NSLayoutConstraint *constraint) {
        [self.makable removeConstraint:constraint];
        return self;
    };
}
/// 移除约束
- (IMGViewMaker * _Nonnull (^)(NSArray<__kindof NSLayoutConstraint *> *))removeConstraints {
    return ^ IMGViewMaker *(NSArray <__kindof NSLayoutConstraint *> *constraints) {
        [self.makable removeConstraints:constraints];
        return self;
    };
}

#pragma mark ******************* UIConstraintBasedLayoutCoreMethods *******************

/// 如果需要更新
- (IMGViewMaker * _Nonnull (^)(void))updateConstraintsIfNeeded {
    return ^ IMGViewMaker *(void) {
        [self.makable updateConstraintsIfNeeded];
        return self;
    };
}
/// 更新约束
- (IMGViewMaker * _Nonnull (^)(void))updateConstraints {
    return ^ IMGViewMaker *(void) {
        [self.makable updateConstraints];
        return self;
    };
}
/// 设置需要更新约束
- (IMGViewMaker * _Nonnull (^)(void))setNeedsUpdateConstraints {
    return ^ IMGViewMaker *(void) {
        [self.makable setNeedsUpdateConstraints];
        return self;
    };
}
/// 约束布局
- (IMGViewMaker * _Nonnull (^)(BOOL))translatesAutoresizingMaskIntoConstraints {
    return ^ IMGViewMaker *(BOOL translatesAutoresizingMaskIntoConstraints) {
        self.makable.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints;
        return self;
    };
}

#pragma mark ******************* UIConstraintBasedLayoutLayering *******************

/// 内视图
- (IMGViewMaker * _Nonnull (^)(void))invalidateIntrinsicContentSize {
    return ^ IMGViewMaker *(void) {
        [self.makable invalidateIntrinsicContentSize];
        return self;
    };
}
/// setContentHuggingPriorityForAxis
- (IMGViewMaker * _Nonnull (^)(UILayoutPriority, UILayoutConstraintAxis))setContentHuggingPriorityForAxis {
    return ^ IMGViewMaker *(UILayoutPriority priority, UILayoutConstraintAxis axis) {
        [self.makable setContentHuggingPriority:priority forAxis:axis];
        return self;
    };
}
/// setContentCompressionResistancePriorityForAxis
- (IMGViewMaker * _Nonnull (^)(UILayoutPriority, UILayoutConstraintAxis))setContentCompressionResistancePriorityForAxis {
    return ^ IMGViewMaker *(UILayoutPriority priority, UILayoutConstraintAxis axis) {
        [self.makable setContentCompressionResistancePriority:priority forAxis:axis];
        return self;
    };
}

#pragma mark ******************* UILayoutGuideSupport *******************

/// 添加虚拟占位对象
- (IMGViewMaker * _Nonnull (^)(UILayoutGuide *))addLayoutGuide {
    return ^ IMGViewMaker *(UILayoutGuide *layoutGuide) {
        [self.makable addLayoutGuide:layoutGuide];
        return self;
    };
}
/// 移除虚拟占位对象
- (IMGViewMaker * _Nonnull (^)(UILayoutGuide *))removeLayoutGuide {
    return ^ IMGViewMaker *(UILayoutGuide *layoutGuide) {
        [self.makable removeLayoutGuide:layoutGuide];
        return self;
    };
}

#pragma mark ******************* UIConstraintBasedLayoutDebugging *******************

/// 通用应用程序
- (IMGViewMaker * _Nonnull (^)(void))exerciseAmbiguityInLayout {
    return ^ IMGViewMaker *(void) {
        [self.makable exerciseAmbiguityInLayout];
        return self;
    };
}
#pragma mark ******************* UIStateRestoration *******************

/// 标识符
- (IMGViewMaker * _Nonnull (^)(NSString *))restorationIdentifier {
    return ^ IMGViewMaker *(NSString *restorationIdentifier) {
        self.makable.restorationIdentifier = restorationIdentifier;
        return self;
    };
}
/// 归档
- (IMGViewMaker * _Nonnull (^)(NSCoder *))encodeRestorableStateWithCoder{
    return ^ IMGViewMaker *(NSCoder *coder) {
        [self.makable encodeRestorableStateWithCoder:coder];
        return self;
    };
}
/// 解档
- (IMGViewMaker * _Nonnull (^)(NSCoder *))decodeRestorableStateWithCoder {
    return ^ IMGViewMaker *(NSCoder *coder) {
        [self.makable decodeRestorableStateWithCoder:coder];
        return self;
    };
}


@end

@implementation UIView (IMGViewMaker)

+ (instancetype)img_makeView:(void (NS_NOESCAPE ^)(IMGViewMaker * _Nonnull))block {
    UIView *view = [[UIView alloc] init];
    [view img_makeView:block];
    return view;
}

- (void)img_makeView:(void (NS_NOESCAPE ^)(IMGViewMaker * _Nonnull))block {
    IMGViewMaker *maker = [[IMGViewMaker alloc] initWithMakable:self];
    block(maker);
}

@end
