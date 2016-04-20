//
//  ViewController.m
//  PilotEducation_Review
//
//  Created by mac on 16/3/10.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XLRootViewController.h"
#import "APSStringUtil.h"
#import "XLAppDelegate.h"
@interface XLRootViewController ()

@end

@implementation XLRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [XLAppDelegate setTabRoot];
    //NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //if ([APSStringUtil isEmpty:[defaults objectForKey:@"PHONE_NUMBER"]]) {
        
    //} else {
    //    [XLAppDelegate setLoginRoot];
    //}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
