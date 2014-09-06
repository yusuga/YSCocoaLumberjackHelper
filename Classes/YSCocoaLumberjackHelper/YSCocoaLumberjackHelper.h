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
 
 and
 
 #ifdef DEBUG
 static const int ddLogLevel = LOG_LEVEL_VERBOSE;
 #else
 static const int ddLogLevel = LOG_LEVEL_ERROR;
 #endif
 
 and scheme setting
 
 Add a new Environment Variable named "XcodeColors", with a value of "YES"
 https://github.com/CocoaLumberjack/CocoaLumberjack/wiki/XcodeColors#xcodecolors-and-ios
 */

@interface YSCocoaLumberjackHelper : NSObject

+ (void)launchLogger;
+ (void)showLumberjackConsole;

@end
