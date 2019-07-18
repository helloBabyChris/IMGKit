//
//  IMGTableViewMaker.m
//  IMGMaker
//
//  Created by Chris on 2019/7/18.
//  Copyright © 2019 Chris. All rights reserved.
//

#import "IMGTableViewMaker.h"

@interface IMGTableViewMaker ()

///
@property (nonatomic, weak) UITableView *img_tableView;

@end

@implementation IMGTableViewMaker

- (instancetype)initWithMakable:(id)makable {
    self = [super initWithMakable:makable];
    if (self) {
        _img_tableView = makable;
    }
    return self;
}

#pragma mark - 自定义

/// 视图
- (UITableView *)tableView {
    return self.img_tableView;
}
/// 注册Cell Nib
- (IMGTableViewMaker * _Nonnull (^)(Class  _Nullable ))registerCellNib {
    return ^ IMGTableViewMaker * (Class cellClass) {
        NSString *nibName = NSStringFromClass(cellClass);
        [self.img_tableView registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:nibName];
        return self;
    };
}
/// 注册多个Cell Nib
- (IMGTableViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerCellNibs {
    return ^ IMGTableViewMaker * (NSArray <Class>*cellClasses) {
        [cellClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *nibName = NSStringFromClass(obj);
            [self.img_tableView registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:nibName];
        }];
        return self;
    };
}
/// 注册Cell
- (IMGTableViewMaker * _Nonnull (^)(Class  _Nullable))registerCellClass {
    return ^ IMGTableViewMaker * (Class cellClass) {
        NSString *nibName = NSStringFromClass(cellClass);
        [self.img_tableView registerClass:cellClass forCellReuseIdentifier:nibName];
        return self;
    };
}
/// 注册多个Cell
- (IMGTableViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerCellClasses {
    return ^ IMGTableViewMaker * (NSArray <Class>*cellClasses) {
        [cellClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *nibName = NSStringFromClass(obj);
            [self.img_tableView registerClass:obj forCellReuseIdentifier:nibName];
        }];
        return self;
    };
}
/// 注册HeaderFooter Nib
- (IMGTableViewMaker * _Nonnull (^)(Class  _Nullable ))registerHeaderFooterViewNib {
    return ^ IMGTableViewMaker * (Class headerFooterClass) {
        NSString *nibName = NSStringFromClass(headerFooterClass);
        [self.img_tableView registerNib:[UINib nibWithNibName:nibName bundle:nil] forHeaderFooterViewReuseIdentifier:nibName];
        return self;
    };
}
/// 注册多个HeaderFooter Nib
- (IMGTableViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerHeaderFooterViewNibs {
    return ^ IMGTableViewMaker * (NSArray <Class>*headerFooterClasses) {
        [headerFooterClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *nibName = NSStringFromClass(obj);
            [self.img_tableView registerNib:[UINib nibWithNibName:nibName bundle:nil] forHeaderFooterViewReuseIdentifier:nibName];
        }];
        return self;
    };
}
/// 注册HeaderFooter
- (IMGTableViewMaker * _Nonnull (^)(Class  _Nullable))registerHeaderFooterViewClass {
    return ^ IMGTableViewMaker * (Class headerFooterClass) {
        NSString *nibName = NSStringFromClass(headerFooterClass);
        [self.img_tableView registerClass:headerFooterClass forHeaderFooterViewReuseIdentifier:nibName];
        return self;
    };
}
/// 注册多个HeaderFooter
- (IMGTableViewMaker * _Nonnull (^)(NSArray<Class> * _Nullable))registerHeaderFooterViewClasses {
    return ^ IMGTableViewMaker * (NSArray <Class>*headerFooterClasses) {
        [headerFooterClasses enumerateObjectsUsingBlock:^(Class  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString *nibName = NSStringFromClass(obj);
            [self.img_tableView registerClass:obj forHeaderFooterViewReuseIdentifier:nibName];
        }];
        return self;
    };
}

#pragma mark - property

- (IMGTableViewMaker * _Nonnull (^)(id<UITableViewDataSource> _Nullable))dataSource {
    return ^ IMGTableViewMaker *(id<UITableViewDataSource> _Nullable dataSource) {
        self.img_tableView.dataSource = dataSource;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(id<UITableViewDelegate> _Nullable))delegate {
    return ^ IMGTableViewMaker *(id<UITableViewDelegate> _Nullable delegate) {
        self.img_tableView.delegate = delegate;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(id<UITableViewDataSourcePrefetching> _Nullable))prefetchDataSource {
    return ^ IMGTableViewMaker *(id<UITableViewDataSourcePrefetching> _Nullable prefetchDataSource) {
        self.img_tableView.prefetchDataSource = prefetchDataSource;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(id<UITableViewDragDelegate> _Nullable))dragDelegate {
    return ^ IMGTableViewMaker *(id<UITableViewDragDelegate> _Nullable dragDelegate) {
        self.img_tableView.dragDelegate = dragDelegate;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(id<UITableViewDropDelegate> _Nullable))dropDelegate {
    return ^ IMGTableViewMaker *(id<UITableViewDropDelegate> _Nullable dropDelegate) {
        self.img_tableView.dropDelegate = dropDelegate;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(CGFloat))rowHeight {
    return ^ IMGTableViewMaker *(CGFloat rowHeight) {
        self.img_tableView.rowHeight = rowHeight;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(CGFloat))sectionHeaderHeight {
    return ^ IMGTableViewMaker *(CGFloat sectionHeaderHeight) {
        self.img_tableView.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(CGFloat))sectionFooterHeight {
    return ^ IMGTableViewMaker *(CGFloat sectionFooterHeight) {
        self.img_tableView.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(CGFloat))estimatedRowHeight {
    return ^ IMGTableViewMaker *(CGFloat estimatedRowHeight) {
        self.img_tableView.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(CGFloat))estimatedSectionHeaderHeight {
    return ^ IMGTableViewMaker *(CGFloat estimatedSectionHeaderHeight) {
        self.img_tableView.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(CGFloat))estimatedSectionFooterHeight {
    return ^ IMGTableViewMaker *(CGFloat estimatedSectionFooterHeight) {
        self.img_tableView.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UIEdgeInsets))separatorInset {
    return ^ IMGTableViewMaker *(UIEdgeInsets separatorInset) {
        self.img_tableView.separatorInset = separatorInset;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UITableViewSeparatorInsetReference))separatorInsetReference {
    return ^ IMGTableViewMaker *(UITableViewSeparatorInsetReference separatorInsetReference) {
        self.img_tableView.separatorInsetReference = separatorInsetReference;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UIView * _Nullable))backgroundView {
    return ^ IMGTableViewMaker *(UIView * _Nullable backgroundView) {
        self.img_tableView.backgroundView = backgroundView;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSIndexPath * _Nonnull, UITableViewScrollPosition, BOOL))scrollToRowAtIndexPathAtScrollPositionWithAnimated {
    return ^ IMGTableViewMaker *(NSIndexPath * _Nonnull indexPath, UITableViewScrollPosition scrollPosition, BOOL animated) {
        [self.img_tableView scrollToRowAtIndexPath:indexPath atScrollPosition:scrollPosition animated:animated];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UITableViewScrollPosition, BOOL))scrollToNearestSelectedRowAtScrollPositionWithAnimated {
    return ^ IMGTableViewMaker *(UITableViewScrollPosition scrollPosition, BOOL animated) {
        [self.img_tableView scrollToNearestSelectedRowAtScrollPosition:scrollPosition animated:animated];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(__attribute__((noescape)) void (^ _Nullable)(void), void (^ _Nullable)(BOOL)))performBatchUpdatesCompletion{
    return ^ IMGTableViewMaker *(void (NS_NOESCAPE ^ _Nullable updates)(void), void (^ _Nullable completion)(BOOL finished)) {
        [self.img_tableView performBatchUpdates:updates completion:completion];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(void))beginUpdates {
    return ^ IMGTableViewMaker *(void) {
        [self.img_tableView beginUpdates];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(void))endUpdates {
    return ^ IMGTableViewMaker *(void) {
        [self.img_tableView endUpdates];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSIndexSet * _Nonnull, UITableViewRowAnimation))insertSectionsWithRowAnimation {
    return ^ IMGTableViewMaker *(NSIndexSet *sections, UITableViewRowAnimation animation) {
        [self.img_tableView insertSections:sections withRowAnimation:animation];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSIndexSet * _Nonnull, UITableViewRowAnimation))deleteSectionsWithRowAnimation {
    return ^ IMGTableViewMaker *(NSIndexSet *sections, UITableViewRowAnimation animation) {
        [self.img_tableView deleteSections:sections withRowAnimation:animation];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSIndexSet * _Nonnull, UITableViewRowAnimation))reloadSectionsWithRowAnimation {
    return ^ IMGTableViewMaker *(NSIndexSet *sections, UITableViewRowAnimation animation) {
        [self.img_tableView reloadSections:sections withRowAnimation:animation];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSInteger, NSInteger))moveSectionToSection {
    return ^ IMGTableViewMaker *(NSInteger section, NSInteger newSection) {
        [self.img_tableView moveSection:section toSection:newSection];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSArray<NSIndexPath *> * _Nonnull, UITableViewRowAnimation))insertRowsAtIndexPathsWithRowAnimation {
    return ^ IMGTableViewMaker *(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation) {
        [self.img_tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:animation];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSArray<NSIndexPath *> * _Nonnull, UITableViewRowAnimation))deleteRowsAtIndexPathsWithRowAnimation {
    return ^ IMGTableViewMaker *(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation) {
        [self.img_tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:animation];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSArray<NSIndexPath *> * _Nonnull, UITableViewRowAnimation))reloadRowsAtIndexPathsWithRowAnimation {
    return ^ IMGTableViewMaker *(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation) {
        [self.img_tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:animation];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSIndexPath * _Nonnull, NSIndexPath * _Nonnull))moveRowAtIndexPathToIndexPath {
    return ^ IMGTableViewMaker *(NSIndexPath *indexPath, NSIndexPath *newIndexPath) {
        [self.img_tableView moveRowAtIndexPath:indexPath toIndexPath:newIndexPath];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(void))reloadData {
    return ^ IMGTableViewMaker *(void) {
        [self.img_tableView reloadData];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(void))reloadSectionIndexTitles {
    return ^ IMGTableViewMaker *(void) {
        [self.img_tableView reloadSectionIndexTitles];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL))editing {
    return ^ IMGTableViewMaker *(BOOL editing) {
        self.img_tableView.editing = editing;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL, BOOL))setEditingWithAnimated {
    return ^ IMGTableViewMaker *(BOOL editing, BOOL animated) {
        [self.img_tableView setEditing:editing animated:animated];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL))allowsSelection {
    return ^ IMGTableViewMaker *(BOOL allowsSelection) {
        self.img_tableView.allowsSelection = allowsSelection;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL))allowsSelectionDuringEditing {
    return ^ IMGTableViewMaker *(BOOL allowsSelectionDuringEditing) {
        self.img_tableView.allowsSelectionDuringEditing = allowsSelectionDuringEditing;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL))allowsMultipleSelection {
    return ^ IMGTableViewMaker *(BOOL allowsMultipleSelection) {
        self.img_tableView.allowsMultipleSelection = allowsMultipleSelection;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL))allowsMultipleSelectionDuringEditing {
    return ^ IMGTableViewMaker *(BOOL allowsMultipleSelectionDuringEditing) {
        self.img_tableView.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSIndexPath * _Nullable, BOOL, UITableViewScrollPosition))selectRowAtIndexPathWithAnimatedScrollPosition {
    return ^ IMGTableViewMaker *(NSIndexPath * _Nullable indexPath, BOOL animated, UITableViewScrollPosition scrollPosition) {
        [self.img_tableView selectRowAtIndexPath:indexPath animated:animated scrollPosition:scrollPosition];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSIndexPath * _Nonnull, BOOL))deselectRowAtIndexPathWithAnimated {
    return ^ IMGTableViewMaker *(NSIndexPath *indexPath, BOOL animated) {
        [self.img_tableView deselectRowAtIndexPath:indexPath animated:animated];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(NSInteger))sectionIndexMinimumDisplayRowCount {
    return ^ IMGTableViewMaker *(NSInteger sectionIndexMinimumDisplayRowCount) {
        self.img_tableView.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UIColor * _Nullable))sectionIndexColor {
    return ^ IMGTableViewMaker *(UIColor * _Nullable sectionIndexColor) {
        self.img_tableView.sectionIndexColor = sectionIndexColor;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UIColor * _Nullable))sectionIndexBackgroundColor {
    return ^ IMGTableViewMaker *(UIColor * _Nullable sectionIndexBackgroundColor) {
        self.img_tableView.sectionIndexBackgroundColor = sectionIndexBackgroundColor;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UIColor * _Nullable))sectionIndexTrackingBackgroundColor {
    return ^ IMGTableViewMaker *(UIColor * _Nullable sectionIndexTrackingBackgroundColor) {
        self.img_tableView.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UIColor * _Nullable))separatorColor {
    return ^ IMGTableViewMaker *(UIColor * _Nullable separatorColor) {
        self.img_tableView.separatorColor = separatorColor;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UIVisualEffect * _Nullable))separatorEffect {
    return ^ IMGTableViewMaker *(UIVisualEffect * _Nullable separatorEffect) {
        self.img_tableView.separatorEffect = separatorEffect;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL))cellLayoutMarginsFollowReadableWidth {
    return ^ IMGTableViewMaker *(BOOL cellLayoutMarginsFollowReadableWidth) {
        self.img_tableView.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL))insetsContentViewsToSafeArea {
    return ^ IMGTableViewMaker *(BOOL insetsContentViewsToSafeArea) {
        self.img_tableView.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UIView * _Nullable))tableHeaderView {
    return ^ IMGTableViewMaker *(UIView * _Nullable tableHeaderView) {
        self.img_tableView.tableHeaderView = tableHeaderView;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UIView * _Nullable))tableFooterView {
    return ^ IMGTableViewMaker *(UIView * _Nullable tableFooterView) {
        self.img_tableView.tableFooterView = tableFooterView;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(UINib * _Nullable, NSString * _Nonnull))registerNibForCellReuseIdentifier {
    return ^ IMGTableViewMaker *(UINib *_Nullable nib, NSString *identifier) {
        [self.img_tableView registerNib:nib forCellReuseIdentifier:identifier];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(Class  _Nullable __unsafe_unretained, NSString * _Nonnull))registerClassForCellReuseIdentifier {
    return ^ IMGTableViewMaker *(Class _Nullable cellClass, NSString *identifier) {
        [self.img_tableView registerClass:cellClass forCellReuseIdentifier:identifier];
        return self;
    };
}


- (IMGTableViewMaker * _Nonnull (^)(UINib * _Nullable, NSString * _Nonnull))registerNibForHeaderFooterViewReuseIdentifier {
    return ^ IMGTableViewMaker *(UINib *_Nullable nib, NSString *identifier) {
        [self.img_tableView registerNib:nib forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}


- (IMGTableViewMaker * _Nonnull (^)(Class  _Nullable __unsafe_unretained, NSString * _Nonnull))registerClassForHeaderFooterViewReuseIdentifier {
    return ^ IMGTableViewMaker *(Class _Nullable cellClass, NSString *identifier) {
        [self.img_tableView registerClass:cellClass forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL))remembersLastFocusedIndexPath {
    return ^ IMGTableViewMaker *(BOOL remembersLastFocusedIndexPath) {
        self.img_tableView.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath;
        return self;
    };
}

- (IMGTableViewMaker * _Nonnull (^)(BOOL))dragInteractionEnabled {
    return ^ IMGTableViewMaker *(BOOL dragInteractionEnabled) {
        self.img_tableView.dragInteractionEnabled = dragInteractionEnabled;
        return self;
    };
}

@end

@implementation UITableView (IMGTableViewMaker)

+ (UITableView *)img_makeTableView:(void (NS_NOESCAPE ^)(IMGTableViewMaker * _Nonnull))block {
    UITableView *tableView = [[UITableView alloc] init];
    [tableView img_makeTableView:block];
    return tableView;
}

- (void)img_makeTableView:(void (NS_NOESCAPE ^)(IMGTableViewMaker * _Nonnull))block {
    IMGTableViewMaker *maker = [[IMGTableViewMaker alloc] initWithMakable:self];
    block(maker);
}

@end
