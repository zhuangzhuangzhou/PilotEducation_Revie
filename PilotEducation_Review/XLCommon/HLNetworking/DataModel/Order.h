//
//  OrderList.h
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;
@class Machine;

@interface Order : NSObject
@property (nonatomic,strong) NSString  * orderId;
@property (nonatomic,strong) NSString  * orderName;
@property (nonatomic,strong) NSString  * date;
@property (nonatomic,strong) NSString  * price;
@property (nonatomic,strong) NSString  * status;
@property (nonatomic,strong) User      * user;
@property (nonatomic,strong) Machine   * machine;
@end
