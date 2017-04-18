//
//  AOPAutohideHeaderTableView.m
//  AOPAutohideTableViewHeader
//
//  Created by aopod on 17/04/2017.
//
//

#import "AOPAutohideHeaderTableView.h"

@protocol AOPAutohideHeaderTableViewRowDataProtocol <NSObject>

- (CGFloat)heightForTableHeaderView;

@end

@interface UITableView (AOPAutohideHeaderTableView)

- (BOOL)_isTableHeaderAutohiding;   // Expose interface
- (CGFloat)heightForTableHeaderViewHiding;

@end

@interface AOPAutohideHeaderTableView ()

- (void)setTableHeaderViewShouldAutoHide:(BOOL)autoHide;    // Expose interface
- (id)_rowData;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
@implementation AOPAutohideHeaderTableView
#pragma clang diagnostic pop

- (void)aop_setTableHeaderView:(UIView *)tableHeaderView autohide:(BOOL)autohide
{
    _aop_tableHeaderViewAutohideMode = autohide ? AOPAutohideHeaderModeAutohide : AOPAutohideHeaderModeNoAutohide;
    [self setTableHeaderView:tableHeaderView];
}

- (void)setTableHeaderView:(UIView *)tableHeaderView
{
    [super setTableHeaderView:tableHeaderView];
    
    self.aop_tableHeaderViewAutohideMode = _aop_tableHeaderViewAutohideMode;
}

- (void)setAop_tableHeaderViewAutohideMode:(AOPAutohideHeaderMode)aop_tableHeaderViewAutohideMode
{
    _aop_tableHeaderViewAutohideMode = aop_tableHeaderViewAutohideMode;
    
    switch (_aop_tableHeaderViewAutohideMode) {
        case AOPAutohideHeaderModeAutohide:
            [self setTableHeaderViewShouldAutoHide:YES];
            break;
        case AOPAutohideHeaderModeNoAutohide:
            [self setTableHeaderViewShouldAutoHide:NO];
            break;
        case AOPAutohideHeaderModeDefault:
            break;
    }
}

- (BOOL)_isTableHeaderAutohiding
{
    if (![self.class aop_iOS10_or_above]) {
        return [super _isTableHeaderAutohiding];
    }
    switch (_aop_tableHeaderViewAutohideMode) {
        case AOPAutohideHeaderModeAutohide:
            return YES;
        case AOPAutohideHeaderModeNoAutohide:
            return NO;
        case AOPAutohideHeaderModeDefault:
            break;
    }
    return [super _isTableHeaderAutohiding];
}

- (CGFloat)heightForTableHeaderViewHiding
{
    if ([self.class aop_iOS10_or_above]) {
        return [super heightForTableHeaderViewHiding];
    }
    switch (_aop_tableHeaderViewAutohideMode) {
        case AOPAutohideHeaderModeAutohide: {
            id<AOPAutohideHeaderTableViewRowDataProtocol> rowData = [self _rowData];
            CGFloat height = [rowData heightForTableHeaderView];
            return height;
        }
        case AOPAutohideHeaderModeNoAutohide:
            return 0;
        case AOPAutohideHeaderModeDefault:
            break;
    }
    return [super heightForTableHeaderViewHiding];
}

+ (BOOL)aop_iOS10_or_above
{
    static BOOL iOS10_or_above = NO;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        iOS10_or_above = [[[UIDevice currentDevice] systemVersion] compare:@"10.0" options:NSNumericSearch] != NSOrderedAscending;
    });
    return iOS10_or_above;
}

@end
