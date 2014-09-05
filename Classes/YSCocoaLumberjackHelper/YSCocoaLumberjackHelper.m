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

/**
 Add to .pch
 
 #import <YSCocoaLumberjackHelper/YSCocoaLumberjackHelper.h>
 
 and
 
 #ifdef DEBUG
 static const int ddLogLevel = LOG_LEVEL_VERBOSE;
 #else
 static const int ddLogLevel = LOG_LEVEL_ERROR;
 #endif
 
 and scheme setting
 https://github.com/CocoaLumberjack/CocoaLumberjack/wiki/XcodeColors#xcodecolors-and-ios
 
 */

+ (void)launchLogger
{    
    // Standard lumberjack initialization
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    
    // Sends log statements to Apple System Logger, so they show up on Console.app
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    
    DDTTYLogger *logger = [DDTTYLogger sharedInstance];
    
    // Enable colors https://github.com/robbiehanson/XcodeColors
    [logger setColorsEnabled:YES];
    
    [logger setForegroundColor:[UIColor redColor] backgroundColor:nil forFlag:LOG_FLAG_ERROR];
    [logger setForegroundColor:[UIColor yellowColor] backgroundColor:nil forFlag:LOG_FLAG_WARN];
    [logger setForegroundColor:[UIColor yellowColor] backgroundColor:nil forFlag:LOG_FLAG_INFO];
    [logger setForegroundColor:[UIColor greenColor] backgroundColor:nil forFlag:LOG_FLAG_DEBUG];
    
    DDLogDebug(@"%s", __func__);
}

+ (void)showLumberjackConsole
{
    // https://github.com/PTEz/LumberjackConsole
    
    [PTEDashboard.sharedDashboard show];
}

@end
