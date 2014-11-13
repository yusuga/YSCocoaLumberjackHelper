//
//  ViewController.m
//  YSCocoaLumberjackHelperExample
//
//  Created by Yu Sugawara on 2014/08/21.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *logLevelControl;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSUInteger segmentIdx;
    switch (ddLogLevel) {
        case DDLogLevelVerbose:
            segmentIdx = 5;
            break;
        case DDLogLevelDebug:
            segmentIdx = 4;
            break;
        case DDLogLevelInfo:
            segmentIdx = 3;
            break;
        case DDLogLevelWarning:
            segmentIdx = 2;
            break;
        case DDLogLevelError:
            segmentIdx = 1;
            break;
        case DDLogLevelOff:
        default:
            segmentIdx = 0;
            break;
    }
    self.logLevelControl.selectedSegmentIndex = segmentIdx;
    
    [self log];
}

- (IBAction)logLevelControlDidChange:(UISegmentedControl *)sender
{
    DDLogLevel logLevel;
    switch ((int)sender.selectedSegmentIndex) {
        case 5:
            logLevel = DDLogLevelVerbose;
            break;
        case 4:
            logLevel = DDLogLevelDebug;
            break;
        case 3:
            logLevel = DDLogLevelInfo;
            break;
        case 2:
            logLevel = DDLogLevelWarning;
            break;
        case 1:
            logLevel = DDLogLevelError;
            break;
        case 0:
        default:
            logLevel = DDLogLevelOff;
            break;
    }
    
    ddLogLevel = logLevel;
}

- (IBAction)log
{
    DDLogError(@"Error: Red color");
    DDLogWarn(@"Warning: Yellow color");
    DDLogInfo(@"Info: Dark gray color");
    DDLogDebug(@"Success: Green color");
    DDLogVerbose(@"Log: Default color");
}

@end
