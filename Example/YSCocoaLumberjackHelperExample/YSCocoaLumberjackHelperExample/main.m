//
//  main.m
//  YSCocoaLumberjackHelperExample
//
//  Created by Yu Sugawara on 2014/08/21.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "YSCocoaLumberjackHelper.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        [YSCocoaLumberjackHelper launchLogger];
        [YSCocoaLumberjackHelper showLumberjackConsole];

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
