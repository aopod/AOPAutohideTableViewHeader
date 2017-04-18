//
//  AOPSearchBar.m
//  AOPAutohideTableViewHeader
//
//  Created by aopod on 18/04/2017.
//  Copyright © 2017 aopod.com. All rights reserved.
//

#import "AOPSearchBar.h"

@implementation AOPSearchBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView
{
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:[UILabel class]]) {
            continue;
        }
        [view removeFromSuperview];
    }
}

@end
