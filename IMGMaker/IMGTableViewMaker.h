//
//  IMGTableViewMaker.h
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGScrollViewMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface IMGTableViewMaker : IMGScrollViewMaker

#pragma mark - 自定义

/// 视图
@property (nonatomic, weak, readonly) UITableView *tableView;
/// 注册Cell Nib
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerCellNib)(Class _Nullable cellClass) NS_AVAILABLE_IOS(5_0);
/// 注册多个Cell Nib
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerCellNibs)(NSArray <Class >* _Nullable cellClasses) NS_AVAILABLE_IOS(5_0);
/// 注册Cell
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerCellClass)(Class _Nullable cellClass) NS_AVAILABLE_IOS(6_0);
/// 注册多个Cell
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerCellClasses)(NSArray <Class >* _Nullable cellClasses) NS_AVAILABLE_IOS(6_0);
/// 注册HeaderFooter Nib
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerHeaderFooterViewNib)(Class _Nullable headerFooterClass) NS_AVAILABLE_IOS(6_0);
/// 注册多个HeaderFooter Nib
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerHeaderFooterViewNibs)(NSArray <Class >* _Nullable headerFooterClasses) NS_AVAILABLE_IOS(6_0);
/// 注册HeaderFooter
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerHeaderFooterViewClass)(Class _Nullable headerFooterClass) NS_AVAILABLE_IOS(6_0);
/// 注册多个HeaderFooter
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerHeaderFooterViewClasses)(NSArray <Class >* _Nullable headerFooterClasses)NS_AVAILABLE_IOS(6_0);

#pragma mark - property

@property (nonatomic, copy, readonly) IMGTableViewMaker *(^dataSource)(id <UITableViewDataSource> _Nullable dataSource);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^delegate)(id <UITableViewDelegate> _Nullable delegate);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^prefetchDataSource)(id <UITableViewDataSourcePrefetching> _Nullable prefetchDataSource) NS_AVAILABLE_IOS(10_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^dragDelegate)(id <UITableViewDragDelegate> _Nullable dragDelegate) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^dropDelegate)(id <UITableViewDropDelegate> _Nullable dataSource) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^rowHeight)(CGFloat rowHeight);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^sectionHeaderHeight)(CGFloat sectionHeaderHeight);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^sectionFooterHeight)(CGFloat sectionFooterHeight);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^estimatedRowHeight)(CGFloat estimatedRowHeight) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^estimatedSectionHeaderHeight)(CGFloat estimatedSectionHeaderHeight) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^estimatedSectionFooterHeight)(CGFloat estimatedSectionFooterHeight) NS_AVAILABLE_IOS(7_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^separatorInset)(UIEdgeInsets separatorInset) NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^separatorInsetReference)(UITableViewSeparatorInsetReference separatorInsetReference) API_AVAILABLE(ios(11.0), tvos(11.0));
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^backgroundView)(UIView *_Nullable backgroundView) NS_AVAILABLE_IOS(3_2);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^scrollToRowAtIndexPathAtScrollPositionWithAnimated)(NSIndexPath *indexPath, UITableViewScrollPosition scrollPosition, BOOL animated);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^scrollToNearestSelectedRowAtScrollPositionWithAnimated)(UITableViewScrollPosition scrollPosition, BOOL animated);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^performBatchUpdatesCompletion)(void (NS_NOESCAPE ^ _Nullable updates)(void), void (^ _Nullable completion)(BOOL finished)) API_AVAILABLE(ios(11.0), tvos(11.0));
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^beginUpdates)(void);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^endUpdates)(void);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^insertSectionsWithRowAnimation)(NSIndexSet *sections, UITableViewRowAnimation animation);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^deleteSectionsWithRowAnimation)(NSIndexSet *sections, UITableViewRowAnimation animation);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^reloadSectionsWithRowAnimation)(NSIndexSet *sections, UITableViewRowAnimation animation) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^moveSectionToSection)(NSInteger section, NSInteger newSection);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^insertRowsAtIndexPathsWithRowAnimation)(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^deleteRowsAtIndexPathsWithRowAnimation)(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^reloadRowsAtIndexPathsWithRowAnimation)(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^moveRowAtIndexPathToIndexPath)(NSIndexPath *indexPath, NSIndexPath *newIndexPath);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^reloadData)(void);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^reloadSectionIndexTitles)(void) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^editing)(BOOL editing);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^setEditingWithAnimated)(BOOL editing, BOOL animated);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^allowsSelection)(BOOL allowsSelection) NS_AVAILABLE_IOS(3_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^allowsSelectionDuringEditing)(BOOL allowsSelectionDuringEditing);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^allowsMultipleSelection)(BOOL allowsMultipleSelection) NS_AVAILABLE_IOS(5_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^allowsMultipleSelectionDuringEditing)(BOOL allowsMultipleSelectionDuringEditing) NS_AVAILABLE_IOS(5_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^selectRowAtIndexPathWithAnimatedScrollPosition)(NSIndexPath * _Nullable indexPath, BOOL animated, UITableViewScrollPosition scrollPosition);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^deselectRowAtIndexPathWithAnimated)(NSIndexPath *indexPath, BOOL animated);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^sectionIndexMinimumDisplayRowCount)(NSInteger sectionIndexMinimumDisplayRowCount);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^sectionIndexColor)(UIColor *_Nullable sectionIndexColor) NS_AVAILABLE_IOS(6_0) UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^sectionIndexBackgroundColor)(UIColor *_Nullable sectionIndexBackgroundColor) NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^sectionIndexTrackingBackgroundColor)(UIColor *_Nullable sectionIndexTrackingBackgroundColor) NS_AVAILABLE_IOS(6_0) UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^separatorStyle)(UITableViewCellSeparatorStyle separatorStyle) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^separatorColor)(UIColor *_Nullable separatorColor) UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^separatorEffect)(UIVisualEffect *_Nullable separatorEffect) NS_AVAILABLE_IOS(8_0) UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^cellLayoutMarginsFollowReadableWidth)(BOOL cellLayoutMarginsFollowReadableWidth) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^insetsContentViewsToSafeArea)(BOOL insetsContentViewsToSafeArea) API_AVAILABLE(ios(11.0), tvos(11.0));
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^tableHeaderView)(UIView *_Nullable tableHeaderView);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^tableFooterView)(UIView *_Nullable tableFooterView);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerNibForCellReuseIdentifier)(UINib *_Nullable nib, NSString *identifier) NS_AVAILABLE_IOS(5_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerClassForCellReuseIdentifier)(Class _Nullable cellClass, NSString *identifier) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerNibForHeaderFooterViewReuseIdentifier)(UINib *_Nullable nib, NSString *identifier) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^registerClassForHeaderFooterViewReuseIdentifier)(Class _Nullable headerFooterClass, NSString *identifier) NS_AVAILABLE_IOS(6_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^remembersLastFocusedIndexPath)(BOOL remembersLasctFocusedIndexPath) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) IMGTableViewMaker *(^dragInteractionEnabled)(BOOL dragInteractionEnabled) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@end

@interface UITableView (IMGTableViewMaker)

+ (UITableView *)img_makeTableView:(void(NS_NOESCAPE ^)(IMGTableViewMaker *make))block;

- (void)img_makeTableView:(void(NS_NOESCAPE ^)(IMGTableViewMaker *make))block;

@end

NS_ASSUME_NONNULL_END
