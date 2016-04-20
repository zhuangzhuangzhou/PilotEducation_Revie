//
//  XLHomePageJobInfoCell.h
//  PilotEducation_Review
//
//  Created by mac on 16/3/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JEProgressView;
@interface XLHomePageJobInfoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *pathImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
//@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@property (weak, nonatomic) IBOutlet JEProgressView *progressView;

@end
