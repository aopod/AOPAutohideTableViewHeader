//
//  AOPAutohideTableHeaderView.m
//  AOPAutohideTableViewHeader
//
//  Created by aopod on 17/04/2017.
//
//

#import "AOPAutohideTableHeaderView.h"

@implementation AOPAutohideTableHeaderView

- (BOOL)isKindOfClass:(Class)aClass
{
    switch (_aop_autohideMode) {
        case AOPAutohideHeaderModeAutohide:
            if (aClass == [UISearchBar class]) {
                return YES;
            }
        case AOPAutohideHeaderModeDefault:
        case AOPAutohideHeaderModeNoAutohide:
            break;
    }
    return [super isKindOfClass:aClass];
}

@end
