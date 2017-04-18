//
//  AOPAutohideHeaderTableView.h
//  AOPAutohideTableViewHeader
//
//  Created by aopod on 17/04/2017.
//
//

#import <UIKit/UIKit.h>
#import "AOPAutohideTableViewHeader.h"

@interface AOPAutohideHeaderTableView : UITableView

#if !TARGET_INTERFACE_BUILDER
/**
 AOPAutohideHeaderModeDefault:      UIView's default behaviour (Doesn't support autohiding)
 AOPAutohideHeaderModeAutohide:     Always enable autohide
 AOPAutohideHeaderModeNoAutohide:   Always disable autohide
 */
@property (nonatomic, assign) IBInspectable AOPAutohideHeaderMode aop_tableHeaderViewAutohideMode;
#else
@property (nonatomic, assign) IBInspectable NSInteger aop_tableHeaderViewAutohideMode;
#endif

/**
 Set tableHeaderView and specifiy whether the view will autohide or not.
 
 Note: If you need original behaviour, use setTableHeaderView: instead.
       When this method is invoked, even UISearchBar will act as normal view.
 
 @param tableHeaderView tableHeaderView
 @param autohide Should tableHeaderView autohide or not. This WILL even change UISearchBars's original behaviour.
 */
- (void)aop_setTableHeaderView:(UIView *)tableHeaderView autohide:(BOOL)autohide;

@end
