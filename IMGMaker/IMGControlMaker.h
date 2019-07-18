//
//  IMGControlMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGViewMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGControlMaker : IMGViewMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UIControl *control;

#pragma mark - property

@property (nonatomic, copy, readonly) IMGControlMaker *(^enabled)(BOOL enabled);
@property (nonatomic, copy, readonly) IMGControlMaker *(^selected)(BOOL selected);
@property (nonatomic, copy, readonly) IMGControlMaker *(^highlighted)(BOOL highlighted);
@property (nonatomic, copy, readonly) IMGControlMaker *(^contentVerticalAlignment)(UIControlContentVerticalAlignment contentVerticalAlignment);
@property (nonatomic, copy, readonly) IMGControlMaker *(^contentHorizontalAlignment)(UIControlContentHorizontalAlignment contentHorizontalAlignment);
@property (nonatomic, copy, readonly) IMGControlMaker *(^endTrackingWithTouchWithEvent)(UITouch * _Nullable touch, UIEvent *_Nullable event);
@property (nonatomic, copy, readonly) IMGControlMaker *(^cancelTrackingWithEvent)(UIEvent *_Nullable event);
@property (nonatomic, copy, readonly) IMGControlMaker *(^addTargetActionForControlEvents)(id _Nullable target , SEL action, UIControlEvents controlEvents);
@property (nonatomic, copy, readonly) IMGControlMaker *(^removeTargetActionForControlEvents)(id _Nullable target , SEL _Nullable action, UIControlEvents controlEvents);
@property (nonatomic, copy, readonly) IMGControlMaker *(^sendActionToTargetForEvent)(SEL  action, id _Nullable target, UIEvent *_Nullable event);
@property (nonatomic, copy, readonly) IMGControlMaker *(^sendActionsForControlEvents)(UIControlEvents controlEvents);

@end

@interface UIControl (IMGControlMaker)

+ (UIControl *)img_makeControl:(void(NS_NOESCAPE ^)(IMGControlMaker *make))block;

- (void)img_makeControl:(void(NS_NOESCAPE ^)(IMGControlMaker *make))block;

@end

NS_ASSUME_NONNULL_END
