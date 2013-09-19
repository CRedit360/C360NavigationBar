//
//  C360AppDelegate.m
//  C360NavigationBarDemo
//
//  Created by Simon Booth on 19/09/2013.
//  Copyright (c) 2013 CRedit360. All rights reserved.
//

#import "C360AppDelegate.h"
#import "C360NavigationBar.h"

@implementation C360AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIColor *tintColor = [UIColor colorWithRed:0 green:0.3 blue:0.6 alpha:1];
    UIColor *itemTintColor = [UIColor colorWithRed:0.3 green:0.6 blue:0.9 alpha:1];
    
    // Show a button to display the tint
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Tap me!" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view = button;
    viewController.title = @"Demo";
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Tap me!" style:UIBarButtonItemStylePlain target:self action:@selector(buttonTapped:)];
    viewController.navigationItem.rightBarButtonItem = item;
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithNavigationBarClass:[C360NavigationBar class] toolbarClass:nil];
    [navigationController pushViewController:viewController animated:NO];
    
    [[C360NavigationBar appearance] setItemTintColor:itemTintColor];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.tintColor = tintColor;
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)buttonTapped:(id)sender
{
    [[[UIAlertView alloc] initWithTitle:nil message:@"Look at the navigation bar!" delegate:nil cancelButtonTitle:@"Oooh!" otherButtonTitles:nil] show];
}

@end
