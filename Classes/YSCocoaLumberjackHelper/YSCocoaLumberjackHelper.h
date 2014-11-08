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
 
 
 Add to .pch
 
 #import <YSCocoaLumberjackHelper/YSCocoaLumberjackHelper.h>
 
 #ifdef DEBUG
 static const DDLogLevel ddLogLevel = DDLogLevelVerbose;
 #else
 static const DDLogLevel ddLogLevel = DDLogLevelError;
 #endif
 
 and scheme setting
 
 Add a new Environment Variable named "XcodeColors", with a value of "YES"
 https://github.com/CocoaLumberjack/CocoaLumberjack/wiki/XcodeColors#xcodecolors-and-ios
 */

@interface YSCocoaLumberjackHelper : NSObject

+ (void)launchLogger;
+ (void)showLumberjackConsole;

@end
