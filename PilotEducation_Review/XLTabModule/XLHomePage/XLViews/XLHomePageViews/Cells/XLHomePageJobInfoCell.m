//
//  XLHomePageJobInfoCell.m
//  PilotEducation_Review
//
//  Created by mac on 16/3/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XLHomePageJobInfoCell.h"
#import "JEProgressView.h"
@implementation XLHomePageJobInfoCell

- (void)awakeFromNib {
    _progressView.transform = CGAffineTransformMakeScale(1.0f, 3.0);
    _progressView.progressViewStyle = UIProgressViewStyleBar;
    _progressView.progress = 0.5;
    _progressView.trackTintColor = [UIColor whiteColor];//设置轨道的颜色
    
    UIImage *image = [UIImage imageNamed:@"jindutiao"];
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    _progressView.progressImage = image;
    [_progressView setProgress:0.8 animated:YES];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
