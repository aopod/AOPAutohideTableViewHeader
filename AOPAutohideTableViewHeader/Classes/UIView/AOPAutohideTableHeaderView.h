//
//  AOPAutohideTableHeaderView.h
//  AOPAutohideTableViewHeader
//
//  Created by aopod on 17/04/2017.
//
//

#import <UIKit/UIKit.h>
#import "AOPAutohideTableViewHeader.h"

@interface AOPAutohideTableHeaderView : UIView

#if !TARGET_INTERFACE_BUILDER
/*
AOPAutohideHeaderModeDefault:      UIView's default behaviour (Doesn't support autohiding)
AOPAutohideHeaderModeAutohide:     Always enable autohide
AOPAutohideHeaderModeNoAutohide:   Always disable autohide
 */
@property (nonatomic, assign) IBInspectable AOPAutohideHeaderMode aop_autohideMode;
#else
@property (nonatomic, assign) IBInspectable NSInteger aop_autohideMode;
#endif

@end
