//
//  XLBaseNavigationController.m
//  PilotEducation_Review
//
//  Created by mac on 16/3/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XLBaseNavigationController.h"

@implementation XLBaseNavigationController
- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
@end
