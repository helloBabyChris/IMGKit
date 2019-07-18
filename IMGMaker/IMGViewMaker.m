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
@property (nonatomic, weak) UIView *img_view;

@end

@implementation IMGViewMaker

/// 唯一初始化方法
- (instancetype)initWithMakable:(id)makable {
    self = [super init];
    if (self) {
        NSAssert(makable, @"makable can not be nil !");
        _img_view = makable;
    }
    return self;
}

#pragma mark - 自定义

/// 中心点
- (IMGViewMaker * _Nonnull (^)(CGPoint))origin {
    return ^ IMGViewMaker *(CGPoint origin) {
        CGRect frame = self.img_view.frame;
        frame.origin = origin;
        self.img_view.frame = frame;
        return self;
    };
}
/// 尺寸
- (IMGViewMaker * _Nonnull (^)(CGSize))size {
    return ^ IMGViewMaker *(CGSize size) {
        CGRect frame = self.img_view.frame;
        frame.size = size;
        self.img_view.frame = frame;
        return self;
    };
}
/// 起始x轴点
- (IMGViewMaker * _Nonnull (^)(CGFloat))x {
    return ^ IMGViewMaker *(CGFloat x) {
        CGRect frame = self.img_view.frame;
        frame.origin.x = x;
        self.img_view.frame = frame;
        return self;
    };
}
/// 起始y轴点
- (IMGViewMaker * _Nonnull (^)(CGFloat))y {
    return ^ IMGViewMaker *(CGFloat y) {
        CGRect frame = self.img_view.frame;
        frame.origin.y = y;
        self.img_view.frame = frame;
        return self;
    };
}
/// 宽度
- (IMGViewMaker * _Nonnull (^)(CGFloat))width {
    return ^ IMGViewMaker *(CGFloat width) {
        CGRect frame = self.img_view.frame;
        frame.size.width = width;
        self.img_view.frame = frame;
        return self;
    };
}
/// 高度
- (IMGViewMaker * _Nonnull (^)(CGFloat))height {
    return ^ IMGViewMaker *(CGFloat height) {
        CGRect frame = self.img_view.frame;
        frame.size.height = height;
        self.img_view.frame = frame;
        return self;
    };
}
/// 中心点x轴
- (IMGViewMaker * _Nonnull (^)(CGFloat))centerX {
    return ^ IMGViewMaker *(CGFloat centerX) {
        CGPoint center = self.img_view.center;
        center.x = centerX;
        self.img_view.center = center;
        return self;
    };
}
/// 中心点y轴
- (IMGViewMaker * _Nonnull (^)(CGFloat))centerY {
    return ^ IMGViewMaker *(CGFloat centerY) {
        CGPoint center = self.img_view.center;
        center.y = centerY;
        self.img_view.center = center;
        return self;
    };
}
/// 添加到父视图
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))addToSupview {
    return ^ IMGViewMaker *(UIView * _Nonnull supview) {
        [supview addSubview:self.img_view];
        return self;
    };
}
/// 视图
- (UIView *)view {
    return self.img_view;
}

#pragma mark - 属性

/// 是否可被响应
- (IMGViewMaker * _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^ IMGViewMaker *(BOOL userInteractionEnabled) {
        self.img_view.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}
/// 标识
- (IMGViewMaker * _Nonnull (^)(NSInteger))tag {
    return ^ IMGViewMaker *(NSInteger tag) {
        self.img_view.tag = tag;
        return self;
    };
}
/// 阿拉伯适配
- (IMGViewMaker * _Nonnull (^)(UISemanticContentAttribute))semanticContentAttribute {
    return ^ IMGViewMaker *(UISemanticContentAttribute semanticContentAttribute) {
        self.img_view.semanticContentAttribute = semanticContentAttribute;
        return self;
    };
}
#pragma mark ******************* UIViewGeometry *******************
/// 在父视图所在位置
- (IMGViewMaker * _Nonnull (^)(CGRect))frame {
    return ^ IMGViewMaker *(CGRect frame) {
        self.img_view.frame = frame;
        return self;
    };
}
/// 本身所在位置
- (IMGViewMaker * _Nonnull (^)(CGRect))bounds {
    return ^ IMGViewMaker *(CGRect bounds) {
        self.img_view.bounds = bounds;
        return self;
    };
}
/// 中心点
- (IMGViewMaker * _Nonnull (^)(CGPoint))center {
    return ^ IMGViewMaker *(CGPoint center) {
        self.img_view.center = center;
        return self;
    };
}
/// 变换
- (IMGViewMaker * _Nonnull (^)(CGAffineTransform))transform {
    return ^ IMGViewMaker *(CGAffineTransform transform) {
        self.img_view.transform = transform;
        return self;
    };
}
/// 映射
- (IMGViewMaker * _Nonnull (^)(CGFloat))contentScaleFactor {
    return ^ IMGViewMaker *(CGFloat contentScaleFactor) {
        self.img_view.contentScaleFactor = contentScaleFactor;
        return self;
    };
}
/// 多点触控
- (IMGViewMaker * _Nonnull (^)(BOOL))multipleTouchEnabled {
    return ^ IMGViewMaker *(BOOL multipleTouchEnabled) {
        self.img_view.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}
/// 独家触控响应
- (IMGViewMaker * _Nonnull (^)(BOOL))exclusiveTouch {
    return ^ IMGViewMaker *(BOOL exclusiveTouch) {
        self.img_view.exclusiveTouch = exclusiveTouch;
        return self;
    };
}
/// 子视图自动调整
- (IMGViewMaker * _Nonnull (^)(BOOL))autoresizesSubviews {
    return ^ IMGViewMaker *(BOOL autoresizesSubviews) {
        self.img_view.autoresizesSubviews = autoresizesSubviews;
        return self;
    };
}
/// 调整策略
- (IMGViewMaker * _Nonnull (^)(UIViewAutoresizing))autoresizingMask {
    return ^ IMGViewMaker *(UIViewAutoresizing autoresizingMask) {
        self.img_view.autoresizingMask = autoresizingMask;
        return self;
    };
}
/// 自动适配
- (IMGViewMaker * _Nonnull (^)(void))sizeToFit {
    return ^ IMGViewMaker *(void) {
        [self.img_view sizeToFit];
        return self;
    };
}

#pragma mark ******************* UIViewHierarchy *******************

/// 父视图移除
- (IMGViewMaker * _Nonnull (^)(void))removeFromSuperview {
    return ^ IMGViewMaker *(void) {
        [self.img_view removeFromSuperview];
        return self;
    };
}
/// 添加子视图在第几位
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull, NSInteger))insertSubviewAtIndex {
    return ^ IMGViewMaker *(UIView * _Nonnull subview, NSInteger index) {
        [self.img_view insertSubview:subview atIndex:index];
        return self;
    };
}
/// 交换子视图位置
- (IMGViewMaker * _Nonnull (^)(NSInteger, NSInteger))exchangeSubviewFromOldIndexToNewIndex {
    return ^ IMGViewMaker *(NSInteger index1, NSInteger index2) {
        [self.img_view exchangeSubviewAtIndex:index1 withSubviewAtIndex:index2];
        return self;
    };
}
/// 添加子视图
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))addSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.img_view addSubview:subview];
        return self;
    };
}
/// 添加视图在视图下
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull, UIView * _Nonnull))insertSubviewBelowSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview, UIView * _Nonnull siblingSubview) {
        [self.img_view insertSubview:subview belowSubview:siblingSubview];
        return self;
    };
}
/// 添加视图在视图上
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull, UIView * _Nonnull))insertSubviewAboveSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview, UIView * _Nonnull siblingSubview) {
        [self.img_view insertSubview:subview aboveSubview:siblingSubview];
        return self;
    };
}
/// 视图带到最上层
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))bringSubviewToFront {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.img_view bringSubviewToFront:subview];
        return self;
    };
}
/// 视图放置到最下层
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))sendSubviewToBack {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.img_view sendSubviewToBack:subview];
        return self;
    };
}
/// 已经加入视图
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))didAddSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.img_view didAddSubview:subview];
        return self;
    };
}
/// 将要移除视图
- (IMGViewMaker * _Nonnull (^)(UIView * _Nonnull))willRemoveSubview {
    return ^ IMGViewMaker *(UIView * _Nonnull subview) {
        [self.img_view willRemoveSubview:subview];
        return self;
    };
}
/// 将要移动到
- (IMGViewMaker * _Nonnull (^)(UIView * _Nullable))willMoveToSuperview {
    return ^ IMGViewMaker *(UIView * _Nonnull newSuperview) {
        [self.img_view willMoveToSuperview:newSuperview];
        return self;
    };
}
/// 已经移动到父视图
- (IMGViewMaker * _Nonnull (^)(void))didMoveToSuperview {
    return ^ IMGViewMaker *(void) {
        [self.img_view didMoveToSuperview];
        return self;
    };
}
/// 将要移动到
- (IMGViewMaker * _Nonnull (^)(UIWindow * _Nullable))willMoveToWindow {
    return ^ IMGViewMaker *(UIWindow * _Nullable newWindow) {
        [self.img_view willMoveToWindow:newWindow];
        return self;
    };
}
/// 已经移动到
- (IMGViewMaker * _Nonnull (^)(void))didMoveToWindow {
    return ^ IMGViewMaker *(void) {
        [self.img_view didMoveToWindow];
        return self;
    };
}
/// 需要更新
- (IMGViewMaker * _Nonnull (^)(void))setNeedsLayout {
    return ^ IMGViewMaker *(void) {
        [self.img_view setNeedsLayout];
        return self;
    };
}
/// 如果需要更新则更新
- (IMGViewMaker * _Nonnull (^)(void))layoutIfNeeded {
    return ^ IMGViewMaker *(void) {
        [self.img_view layoutIfNeeded];
        return self;
    };
}
/// 更新子视图
- (IMGViewMaker * _Nonnull (^)(void))layoutSubviews {
    return ^ IMGViewMaker *(void) {
        [self.img_view layoutSubviews];
        return self;
    };
}
/// 视图边框距离
- (IMGViewMaker * _Nonnull (^)(UIEdgeInsets))layoutMargins {
    return ^ IMGViewMaker *(UIEdgeInsets layoutMargins) {
        self.img_view.layoutMargins = layoutMargins;
        return self;
    };
}
/// 视图边框距离
- (IMGViewMaker * _Nonnull (^)(NSDirectionalEdgeInsets))directionalLayoutMargins {
    return ^ IMGViewMaker *(NSDirectionalEdgeInsets directionalLayoutMargins) {
        self.img_view.directionalLayoutMargins = directionalLayoutMargins;
        return self;
    };
}
/// 视图父视图和子视图的传递
- (IMGViewMaker * _Nonnull (^)(BOOL))preservesSuperviewLayoutMargins {
    return ^ IMGViewMaker *(BOOL preservesSuperviewLayoutMargins) {
        self.img_view.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins;
        return self;
    };
}
/// 边距到安全区域
- (IMGViewMaker * _Nonnull (^)(BOOL))insetsLayoutMarginsFromSafeArea {
    return ^ IMGViewMaker *(BOOL insetsLayoutMarginsFromSafeArea) {
        self.img_view.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea;
        return self;
    };
}
/// 边距发生改变
- (IMGViewMaker * _Nonnull (^)(void))layoutMarginsDidChange {
    return ^ IMGViewMaker *(void) {
        [self.img_view layoutMarginsDidChange];
        return self;
    };
}
/// 安全区域发生改变
- (IMGViewMaker * _Nonnull (^)(void))safeAreaInsetsDidChange {
    return ^ IMGViewMaker *(void) {
        [self.img_view safeAreaInsetsDidChange];
        return self;
    };
}

#pragma mark ******************* UIViewRendering *******************

/// 构建视图
- (IMGViewMaker * _Nonnull (^)(CGRect))drawRect {
    return ^ IMGViewMaker *(CGRect rect) {
        [self.img_view drawRect:rect];
        return self;
    };
}
/// 需要重新绘制
- (IMGViewMaker * _Nonnull (^)(void))setNeedsDisplay {
    return ^ IMGViewMaker *(void) {
        [self.img_view setNeedsDisplay];
        return self;
    };
}
- (IMGViewMaker * _Nonnull (^)(CGRect))setNeedsDisplayInRect {
    return ^ IMGViewMaker *(CGRect drawRect) {
        [self.img_view setNeedsDisplayInRect:drawRect];
        return self;
    };
}
/// 剪切
- (IMGViewMaker * _Nonnull (^)(BOOL))clipsToBounds {
    return ^ IMGViewMaker *(BOOL clipsToBounds) {
        self.img_view.clipsToBounds = clipsToBounds;
        return self;
    };
}
/// 背景色
- (IMGViewMaker * _Nonnull (^)(UIColor *_Nullable))backgroundColor {
    return ^ IMGViewMaker *(UIColor *_Nullable backgroundColor) {
        self.img_view.backgroundColor = backgroundColor;
        return self;
    };
}
/// 透明度
- (IMGViewMaker * _Nonnull (^)(CGFloat))alpha {
    return ^ IMGViewMaker *(CGFloat alpha) {
        self.img_view.alpha = alpha;
        return self;
    };
}
/// 是否透明
- (IMGViewMaker * _Nonnull (^)(BOOL))opaque {
    return ^ IMGViewMaker *(BOOL opaque) {
        self.img_view.opaque = opaque;
        return self;
    };
}
/// 绘制前是否绘画
- (IMGViewMaker * _Nonnull (^)(BOOL))clearsContextBeforeDrawing {
    return ^ IMGViewMaker *(BOOL clearsContextBeforeDrawing) {
        self.img_view.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}
/// 隐藏
- (IMGViewMaker * _Nonnull (^)(BOOL))hidden {
    return ^ IMGViewMaker *(BOOL hidden) {
        self.img_view.hidden = hidden;
        return self;
    };
}
/// 填充方式
- (IMGViewMaker * _Nonnull (^)(UIViewContentMode))contentMode {
    return ^ IMGViewMaker *(UIViewContentMode contentMode) {
        self.img_view.contentMode = contentMode;
        return self;
    };
}
/// 拉伸
- (IMGViewMaker * _Nonnull (^)(CGRect))contentStretch {
    return ^ IMGViewMaker *(CGRect contentStretch) {
        self.img_view.contentStretch = contentStretch;
        return self;
    };
}
/// 浮层
- (IMGViewMaker * _Nonnull (^)(UIView *))maskView {
    return ^ IMGViewMaker *(UIView *maskView) {
        self.img_view.maskView = maskView;
        return self;
    };
}
/// 色值
- (IMGViewMaker * _Nonnull (^)(UIColor *))tintColor {
    return ^ IMGViewMaker *(UIColor *tintColor) {
        self.img_view.tintColor = tintColor;
        return self;
    };
}
/// 色值模式
- (IMGViewMaker * _Nonnull (^)(UIViewTintAdjustmentMode))tintAdjustmentMode {
    return ^ IMGViewMaker *(UIViewTintAdjustmentMode tintAdjustmentMode) {
        self.img_view.tintAdjustmentMode = tintAdjustmentMode;
        return self;
    };
}
/// 色值发生改变
- (IMGViewMaker * _Nonnull (^)(void))tintColorDidChange {
    return ^ IMGViewMaker *(void) {
        [self.img_view tintColorDidChange];
        return self;
    };
}

#pragma mark ******************* UIViewGestureRecognizers *******************

/// 手势
- (IMGViewMaker * _Nonnull (^)(NSArray <__kindof UIGestureRecognizer *>*))gestureRecognizers {
    return ^ IMGViewMaker *(NSArray <__kindof UIGestureRecognizer *>* _Nullable gestureRecognizers) {
        self.img_view.gestureRecognizers = gestureRecognizers;
        return self;
    };
}
/// 添加手势
- (IMGViewMaker * _Nonnull (^)(UIGestureRecognizer *))addGestureRecognizer {
    return ^ IMGViewMaker *(UIGestureRecognizer *gestureRecognizer) {
        [self.img_view removeGestureRecognizer:gestureRecognizer];
        return self;
    };
}
/// 移除手势
- (IMGViewMaker * _Nonnull (^)(UIGestureRecognizer *))removeGestureRecognizer {
    return ^ IMGViewMaker *(UIGestureRecognizer *gestureRecognizer) {
        [self.img_view addGestureRecognizer:gestureRecognizer];
        return self;
    };
}

#pragma mark ******************* UIViewMotionEffects *******************

/// 添加视觉差视图
- (IMGViewMaker * _Nonnull (^)(UIMotionEffect *))addMotionEffect {
    return ^ IMGViewMaker *(UIMotionEffect *effect) {
        [self.img_view addMotionEffect:effect];
        return self;
    };
}
/// 移除视觉差视图
- (IMGViewMaker * _Nonnull (^)(UIMotionEffect *))removeMotionEffect {
    return ^ IMGViewMaker *(UIMotionEffect *effect) {
        [self.img_view removeMotionEffect:effect];
        return self;
    };
}
/// 视觉差视图
- (IMGViewMaker * _Nonnull (^)(NSArray <__kindof  UIMotionEffect *> *))motionEffects {
    return ^ IMGViewMaker *(NSArray <__kindof UIMotionEffect *> *motionEffects) {
        self.img_view.motionEffects = motionEffects;
        return self;
    };
}

#pragma mark ******************* UIConstraintBasedLayoutInstallingConstraints *******************

/// 添加约束
- (IMGViewMaker * _Nonnull (^)(NSLayoutConstraint *))addConstraint {
    return ^ IMGViewMaker *(NSLayoutConstraint *constraint) {
        [self.img_view addConstraint:constraint];
        return self;
    };
}
/// 添加约束
- (IMGViewMaker * _Nonnull (^)(NSArray<__kindof NSLayoutConstraint *> *))addConstraints {
    return ^ IMGViewMaker *(NSArray<__kindof NSLayoutConstraint *> *constraints) {
        [self.img_view addConstraints:constraints];
        return self;
    };
}
/// 移除约束
- (IMGViewMaker * _Nonnull (^)(NSLayoutConstraint *))removeConstraint {
    return ^ IMGViewMaker *(NSLayoutConstraint *constraint) {
        [self.img_view removeConstraint:constraint];
        return self;
    };
}
/// 移除约束
- (IMGViewMaker * _Nonnull (^)(NSArray<__kindof NSLayoutConstraint *> *))removeConstraints {
    return ^ IMGViewMaker *(NSArray <__kindof NSLayoutConstraint *> *constraints) {
        [self.img_view removeConstraints:constraints];
        return self;
    };
}

#pragma mark ******************* UIConstraintBasedLayoutCoreMethods *******************

/// 如果需要更新
- (IMGViewMaker * _Nonnull (^)(void))updateConstraintsIfNeeded {
    return ^ IMGViewMaker *(void) {
        [self.img_view updateConstraintsIfNeeded];
        return self;
    };
}
/// 更新约束
- (IMGViewMaker * _Nonnull (^)(void))updateConstraints {
    return ^ IMGViewMaker *(void) {
        [self.img_view updateConstraints];
        return self;
    };
}
/// 设置需要更新约束
- (IMGViewMaker * _Nonnull (^)(void))setNeedsUpdateConstraints {
    return ^ IMGViewMaker *(void) {
        [self.img_view setNeedsUpdateConstraints];
        return self;
    };
}
/// 约束布局
- (IMGViewMaker * _Nonnull (^)(BOOL))translatesAutoresizingMaskIntoConstraints {
    return ^ IMGViewMaker *(BOOL translatesAutoresizingMaskIntoConstraints) {
        self.img_view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints;
        return self;
    };
}

#pragma mark ******************* UIConstraintBasedLayoutLayering *******************

/// 内视图
- (IMGViewMaker * _Nonnull (^)(void))invalidateIntrinsicContentSize {
    return ^ IMGViewMaker *(void) {
        [self.img_view invalidateIntrinsicContentSize];
        return self;
    };
}
/// setContentHuggingPriorityForAxis
- (IMGViewMaker * _Nonnull (^)(UILayoutPriority, UILayoutConstraintAxis))setContentHuggingPriorityForAxis {
    return ^ IMGViewMaker *(UILayoutPriority priority, UILayoutConstraintAxis axis) {
        [self.img_view setContentHuggingPriority:priority forAxis:axis];
        return self;
    };
}
/// setContentCompressionResistancePriorityForAxis
- (IMGViewMaker * _Nonnull (^)(UILayoutPriority, UILayoutConstraintAxis))setContentCompressionResistancePriorityForAxis {
    return ^ IMGViewMaker *(UILayoutPriority priority, UILayoutConstraintAxis axis) {
        [self.img_view setContentCompressionResistancePriority:priority forAxis:axis];
        return self;
    };
}

#pragma mark ******************* UILayoutGuideSupport *******************

/// 添加虚拟占位对象
- (IMGViewMaker * _Nonnull (^)(UILayoutGuide *))addLayoutGuide {
    return ^ IMGViewMaker *(UILayoutGuide *layoutGuide) {
        [self.img_view addLayoutGuide:layoutGuide];
        return self;
    };
}
/// 移除虚拟占位对象
- (IMGViewMaker * _Nonnull (^)(UILayoutGuide *))removeLayoutGuide {
    return ^ IMGViewMaker *(UILayoutGuide *layoutGuide) {
        [self.img_view removeLayoutGuide:layoutGuide];
        return self;
    };
}

#pragma mark ******************* UIConstraintBasedLayoutDebugging *******************

/// 通用应用程序
- (IMGViewMaker * _Nonnull (^)(void))exerciseAmbiguityInLayout {
    return ^ IMGViewMaker *(void) {
        [self.img_view exerciseAmbiguityInLayout];
        return self;
    };
}
#pragma mark ******************* UIStateRestoration *******************

/// 标识符
- (IMGViewMaker * _Nonnull (^)(NSString *))restorationIdentifier {
    return ^ IMGViewMaker *(NSString *restorationIdentifier) {
        self.img_view.restorationIdentifier = restorationIdentifier;
        return self;
    };
}
/// 归档
- (IMGViewMaker * _Nonnull (^)(NSCoder *))encodeRestorableStateWithCoder{
    return ^ IMGViewMaker *(NSCoder *coder) {
        [self.img_view encodeRestorableStateWithCoder:coder];
        return self;
    };
}
/// 解档
- (IMGViewMaker * _Nonnull (^)(NSCoder *))decodeRestorableStateWithCoder {
    return ^ IMGViewMaker *(NSCoder *coder) {
        [self.img_view decodeRestorableStateWithCoder:coder];
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
