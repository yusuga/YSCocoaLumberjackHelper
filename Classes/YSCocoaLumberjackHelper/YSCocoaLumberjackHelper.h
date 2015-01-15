//
//  YSCocoaLumberjackHelper.h
//  YSCocoaLumberjackHelperExample
//
//  Created by Yu Sugawara on 2014/08/21.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>

/**
 https://github.com/CocoaLumberjack/CocoaLumberjack
 https://github.com/CocoaLumberjack/CocoaLumberjack/wiki/XcodeColors
 
 Step 1:
 Add to .pch
 
 #import <CocoaLumberjack/CocoaLumberjack.h>
 #ifdef DEBUG
 static const DDLogLevel ddLogLevel = DDLogLevelAll;
 #else
 static const DDLogLevel ddLogLevel = DDLogLevelError;
 #endif
 
 Step 2:
 Scheme setting
 
 Add a new Environment Variable named "XcodeColors", with a value of "YES"
 https://github.com/CocoaLumberjack/CocoaLumberjack/wiki/XcodeColors#xcodecolors-and-ios
 
 Step 3:
 Launch YSCocoaLumberjackHelper
 
 #import <YSCocoaLumberjackHelper/YSCocoaLumberjackHelper.h>
 [YSCocoaLumberjackHelper launchLogger];
 
 Optional:
 Force synchronous logging
 
 #if defined(LOG_ASYNC_ENABLED)
 #undef LOG_ASYNC_ENABLED
 #define LOG_ASYNC_ENABLED NO
 #endif
 
 */

@interface YSCocoaLumberjackHelper : NSObject

+ (void)launchLogger;
+ (void)showLumberjackConsole;

@end
