//
//  AppDelegate.h
//  SegmentedControlViews
//
//  Created by Michael Luton on 1/22/12.
//  Copyright (c) 2012 Michael Luton. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SegmentsController;

@interface AppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) SegmentsController* segmentsController;
@property (nonatomic, retain) UISegmentedControl* segmentedControl;
@property (nonatomic, retain) IBOutlet UIWindow* window;

@end
