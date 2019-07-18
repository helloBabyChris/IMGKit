//
//  IMGCollectionViewMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGScrollViewMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGCollectionViewMaker : IMGScrollViewMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UICollectionView *collectionView;
/// 注册Cell
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerCellClass)(Class _Nullable cellClass);
/// 注册多个Cell
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerCellClasses)(NSArray <Class >* _Nullable cellClasses);
/// 注册Cell Nib
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerCellNib)(Class _Nullable cellClass);
/// 注册多个Cell Nib
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerCellNibs)(NSArray <Class >* _Nullable cellClasses);
/// 注册Header
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerHeaderClass)(Class _Nullable headerClass);
/// 注册多个Header
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerHeaderClasses)(NSArray <Class >* _Nullable headerClasses);
/// 注册Header Nib
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerHeaderNib)(Class _Nullable headerClass);
/// 注册多个Header Nib
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerHeaderNibs)(NSArray <Class >* _Nullable headerClasses);
/// 注册Footer
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerFooterClass)(Class _Nullable footerClass);
/// 注册多个Footer
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerFooterClasses)(NSArray <Class >* _Nullable footerClasses);
/// 注册Footer Nib
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerFooterNib)(Class _Nullable footerClass);
/// 注册多个Footer Nib
@property (nonatomic, copy, readonly) IMGCollectionViewMaker *(^registerFooterNibs)(NSArray <Class >* _Nullable footerClasses);

@end

@interface UICollectionView (IMGCollectionViewMaker)

+ (UICollectionView *)img_makeCollectionView:(void(NS_NOESCAPE ^)(IMGCollectionViewMaker *make))block;

- (void)img_makeCollectionView:(void(NS_NOESCAPE ^)(IMGCollectionViewMaker *make))block;

@end

NS_ASSUME_NONNULL_END
