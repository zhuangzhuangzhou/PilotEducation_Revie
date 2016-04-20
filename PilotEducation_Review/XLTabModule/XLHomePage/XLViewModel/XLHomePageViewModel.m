//
//  XLHomePageViewModel.m
//  PilotEducation_Review
//
//  Created by mac on 16/3/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XLHomePageViewModel.h"
#import "XLHomePageJobInfoCell.h"
@interface XLHomePageViewModel ()
@property (nonatomic,strong) UITableView * tempTableView;
@end

@implementation XLHomePageViewModel

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.tempTableView = tableView;
    return 100.f;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static  NSString  *CellIdentiferId = @"XLHomePageJobInfoCell";
    XLHomePageJobInfoCell  *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentiferId];
    if (cell == nil) {
        NSArray *nibs = [[NSBundle mainBundle]loadNibNamed:@"XLHomePageJobInfoCell" owner:nil options:nil];
        cell = [nibs lastObject];
    }
    cell.titleLabel.text = self.dataSource[indexPath.row][@"title"];
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}


@end
