//
//  YSCocoaLumberjackHelper.m
//  YSCocoaLumberjackHelperExample
//
//  Created by Yu Sugawara on 2014/08/21.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "YSCocoaLumberjackHelper.h"
#import <LumberjackConsole/PTEDashboard.h>

@implementation YSCocoaLumberjackHelper

+ (void)launchLogger
{
    // Standard lumberjack initialization
    DDTTYLogger *logger = [DDTTYLogger sharedInstance];
    
    [DDLog addLogger:logger];
    [logger setColorsEnabled:YES]; // Enable colors https://github.com/robbiehanson/XcodeColors
    
    [logger setForegroundColor:[UIColor redColor] backgroundColor:nil forFlag:DDLogFlagError];
    [logger setForegroundColor:[UIColor yellowColor] backgroundColor:nil forFlag:DDLogFlagWarning];
    [logger setForegroundColor:[UIColor darkGrayColor] backgroundColor:nil forFlag:DDLogFlagInfo];
    [logger setForegroundColor:[UIColor greenColor] backgroundColor:nil forFlag:DDLogFlagDebug];
    
    // Sends log statements to Apple System Logger, so they show up on Console.app
    [DDLog addLogger:[DDASLLogger sharedInstance]];
}

+ (void)showLumberjackConsole
{
    // https://github.com/PTEz/LumberjackConsole    
    [PTEDashboard.sharedDashboard show];
}

@end
