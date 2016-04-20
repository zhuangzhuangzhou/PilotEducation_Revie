//
//  XLBaseTableView.m
//  PilotEducation_Review
//
//  Created by mac on 16/3/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XLBaseTableView.h"

@implementation XLBaseTableView

- (void)setExtraCellLineHidden {
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    [self setTableFooterView:view];
}
- (void)awakeFromNib
{
    if (KDEVICE_VERSION >= 8.0) {
        self.layoutMargins = UIEdgeInsetsZero;
    }
    [self setExtraCellLineHidden];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.xlDelegate touchTable];
    [super touchesBegan:touches withEvent:event];
}

@end
