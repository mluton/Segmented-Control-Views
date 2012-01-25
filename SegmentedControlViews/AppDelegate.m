//
//  AppDelegate.m
//  SegmentedControlViews
//
//  Created by Michael Luton on 1/22/12.
//  Copyright (c) 2012 Michael Luton. All rights reserved.
//  Really large portions of this file Copyright Red Artisan 2010. All rights reserved.
//

#import "AppDelegate.h"
#import "SegmentsController.h"
#import "NSArray+PerformSelector.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface AppDelegate ()
- (NSArray *)segmentViewControllers;
- (void)firstUserExperience;
@end

@implementation AppDelegate

@synthesize window;
@synthesize segmentsController;
@synthesize segmentedControl;

#pragma mark -
#pragma mark Application lifecycle


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];

    NSArray * viewControllers = [self segmentViewControllers];
    UINavigationController * navigationController = [[[UINavigationController alloc] init] autorelease];
    
    self.segmentsController = [[SegmentsController alloc] initWithNavigationController:navigationController viewControllers:viewControllers];
    self.segmentedControl = [[UISegmentedControl alloc] initWithItems:[viewControllers arrayByPerformingSelector:@selector(title)]];
    self.segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    [self.segmentedControl addTarget:self.segmentsController action:@selector(indexDidChangeForSegmentedControl:) forControlEvents:UIControlEventValueChanged];
    
    [self firstUserExperience];
    [window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];
    
    return YES;
}

#pragma mark -
#pragma mark Segment Content
- (NSArray *)segmentViewControllers {
    UIViewController * firstCat     = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    UIViewController * secondCat = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    UIViewController * thirdCat = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    
    NSArray * viewControllers = [NSArray arrayWithObjects:firstCat, secondCat, thirdCat, nil];
    [firstCat release];
    [secondCat release];
    [thirdCat release];
    
    return viewControllers;
}

- (void)firstUserExperience {
    self.segmentedControl.selectedSegmentIndex = 0;
    [self.segmentsController indexDidChangeForSegmentedControl:self.segmentedControl];
}


#pragma mark -
#pragma mark Memory management
- (void)dealloc
{
    self.segmentedControl   = nil;
    self.segmentsController = nil;
    [window release];
    [super dealloc];
}


@end
