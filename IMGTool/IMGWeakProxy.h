//
//  IMGWeakProxy.h
//  IMGTool
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IMGWeakProxy : NSProxy

/// 代理
@property (nullable, nonatomic, weak, readonly) id target;

+ (instancetype)proxyWithTarget:(id)target;

- (instancetype)initWithTarget:(id)target;

@end

NS_ASSUME_NONNULL_END
