//
//  XLBaseTableView.h
//  PilotEducation_Review
//
//  Created by mac on 16/3/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol XLBaseTableViewDelegate <NSObject>
- (void) touchTable;
@end

@interface XLBaseTableView : UITableView
@property (nonatomic, weak) id<XLBaseTableViewDelegate>xlDelegate;
@end
