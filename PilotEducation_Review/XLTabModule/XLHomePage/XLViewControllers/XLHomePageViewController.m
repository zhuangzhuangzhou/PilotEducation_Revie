//
//  XLHomePageViewController.m
//  PilotEducation_Review
//
//  Created by mac on 16/3/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XLHomePageViewController.h"
#import "XLBaseTableView.h"
#import "XLHomePageOperation.h"
#import "XLHomePageViewModel.h"

@interface XLHomePageViewController ()

@property (weak, nonatomic) IBOutlet XLBaseTableView *mainTableView;
@property (strong, nonatomic) XLHomePageOperation *operation;
@property (strong, nonatomic) XLHomePageViewModel *viewModel;

@end

@implementation XLHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self dataInit];
    // 点击响应
    [self.mainTableView gzwLoading:^{
        NSLog(@"再点我");
        [self dataLoad];
    }];
    [self dataLoad];
    
    [self viewInit];
}


- (void)dataInit {
    self.operation = [[XLHomePageOperation alloc] init];
    self.viewModel = [[XLHomePageViewModel alloc] init];
    self.viewModel.dataSource = @[].mutableCopy;
    self.mainTableView.delegate = self.viewModel;
    self.mainTableView.dataSource = self.viewModel;
}

- (void)dataLoad {
    self.mainTableView.loading = YES;
    [self.operation getHomePageCompleteBlock:^(id result, NSError *error) {
        
        [self.viewModel.dataSource removeAllObjects];
        [self.viewModel.dataSource setArray:result[@"data"][@"obtain_employment_list"]];
        if (self.viewModel.dataSource.count == 0) {
            self.mainTableView.loading = NO;
        }
        [self.mainTableView reloadData];
    }];
}


- (void)viewInit {
    /**
     *
     *
     *  
     */
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
