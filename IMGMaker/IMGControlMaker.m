//
//  IMGControlMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGControlMaker.h"

@interface IMGControlMaker ()

///
@property (nonatomic, weak) UIControl *img_control;

@end

@implementation IMGControlMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_control = makable;
    }
    return self;
}

#pragma mark - 自定义

- (UIControl *)control {
    return self.img_control;
}

#pragma mark - property

- (IMGControlMaker * _Nonnull (^)(BOOL))enabled {
    return ^ IMGControlMaker *(BOOL enabled) {
        self.img_control.enabled = enabled;
        return self;
    };
}

- (IMGControlMaker * _Nonnull (^)(BOOL))selected {
    return ^ IMGControlMaker *(BOOL selected) {
        self.img_control.selected = selected;
        return self;
    };
}

- (IMGControlMaker * _Nonnull (^)(BOOL))highlighted {
    return ^ IMGControlMaker *(BOOL highlighted) {
        self.img_control.highlighted = highlighted;
        return self;
    };
}


- (IMGControlMaker * _Nonnull (^)(UIControlContentVerticalAlignment))contentVerticalAlignment {
    return ^ IMGControlMaker *(UIControlContentVerticalAlignment contentVerticalAlignment) {
        self.img_control.contentVerticalAlignment = contentVerticalAlignment;
        return self;
    };
}

- (IMGControlMaker * _Nonnull (^)(UIControlContentHorizontalAlignment))contentHorizontalAlignment {
    return ^ IMGControlMaker *(UIControlContentHorizontalAlignment contentHorizontalAlignment) {
        self.img_control.contentHorizontalAlignment = contentHorizontalAlignment;
        return self;
    };
}

- (IMGControlMaker * _Nonnull (^)(UITouch * _Nullable, UIEvent * _Nullable))endTrackingWithTouchWithEvent {
    return ^ IMGControlMaker *(UITouch * _Nullable touch, UIEvent *_Nullable event) {
        [self.img_control endTrackingWithTouch:touch withEvent:event];
        return self;
    };
}

- (IMGControlMaker * _Nonnull (^)(UIEvent * _Nullable))cancelTrackingWithEvent {
    return ^ IMGControlMaker *(UIEvent *_Nullable event) {
        [self.img_control cancelTrackingWithEvent:event];
        return self;
    };
}


- (IMGControlMaker * _Nonnull (^)(id _Nullable, SEL _Nonnull, UIControlEvents))addTargetActionForControlEvents {
    return ^ IMGControlMaker *(id _Nullable target , SEL action, UIControlEvents controlEvents) {
        [self.img_control addTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}

- (IMGControlMaker * _Nonnull (^)(id _Nullable, SEL _Nullable, UIControlEvents))removeTargetActionForControlEvents {
    return ^ IMGControlMaker *(id _Nullable target , SEL _Nullable action, UIControlEvents controlEvents) {
        [self.img_control removeTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}

- (IMGControlMaker * _Nonnull (^)(SEL _Nonnull, id _Nonnull, UIEvent * _Nonnull))sendActionToTargetForEvent {
    return ^ IMGControlMaker *(SEL  action, id _Nullable target, UIEvent *_Nullable event) {
        [self.img_control sendAction:action to:target forEvent:event];
        return self;
    };
}

- (IMGControlMaker * _Nonnull (^)(UIControlEvents))sendActionsForControlEvents {
    return ^ IMGControlMaker *(UIControlEvents controlEvents) {
        [self.img_control sendActionsForControlEvents:controlEvents];
        return self;
    };
}

@end

@implementation UIControl (IMGControlMaker)

+ (UIControl *)img_makeControl:(void (NS_NOESCAPE ^)(IMGControlMaker * _Nonnull))block {
    UIControl *control = [[UIControl alloc] init];
    [control img_makeControl:block];
    return control;
}

- (void)img_makeControl:(void (NS_NOESCAPE ^)(IMGControlMaker * _Nonnull))block {
    IMGControlMaker *maker = [[IMGControlMaker alloc] initWithMakable:self];
    block(maker);
}

@end

