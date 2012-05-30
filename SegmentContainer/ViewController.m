//
//  ViewController.m
//  SegmentContainer
//
//  Created by Tiago Henriques on 4/18/12.
//  Copyright (c) 2012 PT Comunicações. All rights reserved.
//

#import "ViewController.h"
#import "LifeCycleTestViewController.h"

@implementation ViewController

- (IBAction)displayLifeCycleTest:(id)sender
{
    UISegmentedControl *segments = (UISegmentedControl *)sender;
    LifeCycleTestViewController *lifecycleTestViewController = nil;
    switch (segments.selectedSegmentIndex) {
        case 0:
            lifecycleTestViewController = [[LifeCycleTestViewController alloc] initWithColor:[UIColor redColor]];
            break;
            
        case 1:
            lifecycleTestViewController = [[LifeCycleTestViewController alloc] initWithColor:[UIColor greenColor]];
            break;
            
        case 2:
            lifecycleTestViewController = [[LifeCycleTestViewController alloc] initWithColor:[UIColor blueColor]];
            break;
            
        default:
            break;
    }
    
    [self setInsetViewController:lifecycleTestViewController withTransitionStyle:HLSTransitionStylePushFromTop];
}

@end
