//
//  Coupon.h
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;
@class Company;

@interface Coupon : NSObject
@property (nonatomic,strong) NSString  * couponId;
@property (nonatomic,strong) NSString  * beginDate;
@property (nonatomic,strong) NSString  * validDate;
@property (nonatomic,strong) NSString  * type;
@property (nonatomic,strong) NSString  * discount;
@property (nonatomic,strong) NSString  * rental;
@property (nonatomic,strong) NSString  * name;
@property (nonatomic,strong) NSString  * machine;
@property (nonatomic,strong) User      * user;
@property (nonatomic,strong) Company   * company;
@end
