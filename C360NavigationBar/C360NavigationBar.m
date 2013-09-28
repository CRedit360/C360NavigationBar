//
//  C360NavigationBar.m
//  C360NavigationBar
//
//  Created by Simon Booth on 19/09/2013.
//  Copyright (c) 2013 CRedit360. All rights reserved.
//

#import "C360NavigationBar.h"

@implementation C360NavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.translucent = NO;
        
        if ([self respondsToSelector:@selector(setBarTintColor:)])
        {
            self.barStyle = UIBarStyleBlack;
            self.tintColor = _itemTintColor = [UIColor whiteColor];
        }
    }
    return self;
}

- (void)setItemTintColor:(UIColor *)itemTintColor
{
    _itemTintColor = itemTintColor;
    self.tintColor = itemTintColor;
}

- (void)didMoveToSuperview
{
    if (self.superview && [self respondsToSelector:@selector(setBarTintColor:)])
    {
        self.tintColor = self.itemTintColor;
        self.barTintColor = self.superview.tintColor;
    }
}

- (void)tintColorDidChange
{
    if (self.superview && [self respondsToSelector:@selector(setBarTintColor:)])
    {
        self.tintColor = self.itemTintColor;
        self.barTintColor = self.superview.tintColor;
    }
}

@end
