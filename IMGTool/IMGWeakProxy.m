//
//  IMGWeakProxy.m
//  IMGTool
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGWeakProxy.h"

@implementation IMGWeakProxy

+ (instancetype)proxyWithTarget:(id)target {
    return [[IMGWeakProxy alloc] initWithTarget:target];
}

- (instancetype)initWithTarget:(id)target {
    _target = target;
    return self;
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    SEL selector = [invocation selector];
    if ([self.target respondsToSelector:selector]) {
        [invocation invokeWithTarget:self.target];
    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.target instanceMethodSignatureForSelector:sel];
}

@end
