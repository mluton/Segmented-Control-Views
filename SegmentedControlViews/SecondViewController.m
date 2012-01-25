//
//  SecondViewController.m
//  SegmentedControlViews
//
//  Created by Michael Luton on 1/23/12.
//  Copyright (c) 2012 Michael Luton. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    if (self) {
        self.title = @"Second";
    }

    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)dealloc 
{
    [super dealloc];
}
@end
