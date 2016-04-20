//
//  XLBaseViewController.m
//  PilotEducation_Review
//
//  Created by mac on 16/3/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XLBaseViewController.h"

@implementation XLBaseViewController

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    [UIResponder currentFirstResponder];
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置标题字体和大小
    UIColor *color = [UIColor whiteColor];
    NSDictionary * dict = [NSDictionary dictionaryWithObjectsAndKeys:color,NSForegroundColorAttributeName, [UIFont fontWithName:@"Helvetica-Bold" size:20], NSFontAttributeName, nil];
    //返回按钮颜色
    self.navigationController.navigationBar.tintColor = color;
    //标题字样式
    self.navigationController.navigationBar.titleTextAttributes = dict;
    //标题栏颜色
    self.navigationController.navigationBar.barTintColor = KSUBJECT_COLOR;
    self.automaticallyAdjustsScrollViewInsets = NO;
    //设置返回按钮
    if (self.navigationController.viewControllers.count > 1) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"] style:(UIBarButtonItemStylePlain) target:self action:@selector(back:)];    }
    
}

- (void)back:(id) sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
