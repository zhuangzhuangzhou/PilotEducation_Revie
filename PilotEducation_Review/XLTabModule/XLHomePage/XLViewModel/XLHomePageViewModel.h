//
//  XLHomePageViewModel.h
//  PilotEducation_Review
//
//  Created by mac on 16/3/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XLHomePageViewModel : NSObject<UITableViewDataSource,
UITableViewDelegate>
@property (nonatomic,strong) NSMutableArray * dataSource;
@end
