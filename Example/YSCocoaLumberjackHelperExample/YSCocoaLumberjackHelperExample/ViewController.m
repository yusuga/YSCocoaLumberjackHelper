//
//  ViewController.m
//  YSCocoaLumberjackHelperExample
//
//  Created by Yu Sugawara on 2014/08/21.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    DDLogError(@"Critical: Red color");
    DDLogWarn(@"Error: Yellow color");
    DDLogInfo(@"Warning: Yellow color");
    DDLogDebug(@"Notice: Green color");
    DDLogVerbose(@"Notice: Default color");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
