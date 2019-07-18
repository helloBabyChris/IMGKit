//
//  IMGCollectionViewMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGCollectionViewMaker.h"

@interface IMGCollectionViewMaker ()

///
@property (nonatomic, weak) UICollectionView *img_collectionView;

@end

@implementation IMGCollectionViewMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_collectionView = makable;
    }
    return self;
}

#pragma mark - 自定义

/// 视图
- (UICollectionView *)collectionView {
    return self.img_collectionView;
}
/// 注册Cell
- (IMGCollectionViewMaker * _Nonnull (^)(Class  _Nullable ))registerCellClass{
    return ^ IMGCollectionViewMaker *(Class _Nullable cellClass) {
        NSString *className = NSStringFromClass(cellClass);
        [self.img_collectionView registerClass:cellClass forCellWithReuseIdentifier:className];
        return self;
    };
}
/// 注册多个Cell
- (IMGCollectionViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerCellClasses {
    return ^ IMGCollectionViewMaker *(NSArray<Class> * _Nullable cellClasses) {
        [cellClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *className = NSStringFromClass(obj);
            [self.img_collectionView registerClass:obj forCellWithReuseIdentifier:className];
        }];
        return self;
    };
}
/// 注册Cell Nib
- (IMGCollectionViewMaker * _Nonnull (^)(Class  _Nullable))registerCellNib {
    return ^ IMGCollectionViewMaker *(Class _Nullable cellClass) {
        NSString *nibName = NSStringFromClass(cellClass);
        [self.img_collectionView registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellWithReuseIdentifier:nibName];
        return self;
    };
}
/// 注册多个Cell Nib
- (IMGCollectionViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerCellNibs {
    return ^ IMGCollectionViewMaker *(NSArray<Class> * _Nullable cellClasses) {
        [cellClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *nibName = NSStringFromClass(obj);
            [self.img_collectionView registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellWithReuseIdentifier:nibName];
        }];
        return self;
    };
}
/// 注册Header
- (IMGCollectionViewMaker * _Nonnull (^)(Class  _Nullable))registerHeaderClass {
    return ^ IMGCollectionViewMaker *(Class _Nullable headerClass) {
        NSString *nibName = NSStringFromClass(headerClass);
        [self.img_collectionView registerClass:headerClass forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:nibName];
        return self;
    };
}
/// 注册多个Header
- (IMGCollectionViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerHeaderClasses {
    return ^ IMGCollectionViewMaker *(NSArray<Class> * _Nullable headerClasses) {
        [headerClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *nibName = NSStringFromClass(obj);
            [self.img_collectionView  registerClass:obj forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:nibName];
        }];
        return self;
    };
}
/// 注册Header Nib
- (IMGCollectionViewMaker * _Nonnull (^)(Class  _Nullable))registerHeaderNib {
    return ^ IMGCollectionViewMaker *(Class _Nullable headerClass) {
        NSString *nibName = NSStringFromClass(headerClass);
        [self.img_collectionView registerNib:[UINib nibWithNibName:nibName bundle:nil]  forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:nibName];
        return self;
    };
}
/// 注册多个Header Nib
- (IMGCollectionViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerHeaderNibs {
    return ^ IMGCollectionViewMaker *(NSArray<Class> * _Nullable headerClasses) {
        [headerClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *nibName = NSStringFromClass(obj);
            [self.img_collectionView registerNib:[UINib nibWithNibName:nibName bundle:nil]  forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:nibName];
        }];
        return self;
    };
}
/// 注册Footer
- (IMGCollectionViewMaker * _Nonnull (^)(Class  _Nullable))registerFooterClass {
    return ^ IMGCollectionViewMaker *(Class _Nullable footerClass) {
        NSString *nibName = NSStringFromClass(footerClass);
        [self.img_collectionView registerClass:footerClass forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:nibName];
        return self;
    };
}
/// 注册多个Footer
- (IMGCollectionViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerFooterClasses {
    return ^ IMGCollectionViewMaker *(NSArray<Class> * _Nullable footerClasses) {
        [footerClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *nibName = NSStringFromClass(obj);
            [self.img_collectionView  registerClass:obj forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:nibName];
        }];
        return self;
    };
}
/// 注册Footer Nib
- (IMGCollectionViewMaker * _Nonnull (^)(Class  _Nullable))registerFooterNib {
    return ^ IMGCollectionViewMaker *(Class _Nullable footerClass) {
        NSString *nibName = NSStringFromClass(footerClass);
        [self.img_collectionView registerNib:[UINib nibWithNibName:nibName bundle:nil]  forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:nibName];
        return self;
    };
}
/// 注册多个Footer Nib
- (IMGCollectionViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerFooterNibs {
    return ^ IMGCollectionViewMaker *(NSArray<Class> * _Nullable footerClasses) {
        [footerClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *nibName = NSStringFromClass(obj);
            [self.img_collectionView registerNib:[UINib nibWithNibName:nibName bundle:nil]  forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:nibName];
        }];
        return self;
    };
}

@end

@implementation UICollectionView (IMGCollectionViewMaker)

+ (UICollectionView *)img_makeCollectionView:(void (NS_NOESCAPE ^)(IMGCollectionViewMaker * _Nonnull))block {
    UICollectionView *collectionView = [[UICollectionView alloc] init];
    [collectionView img_makeCollectionView:block];
    return collectionView;
}

- (void)img_makeCollectionView:(void (NS_NOESCAPE ^)(IMGCollectionViewMaker * _Nonnull))block {
    IMGCollectionViewMaker *maker = [[IMGCollectionViewMaker alloc] initWithMakable:self];
    block(maker);
}

@end
