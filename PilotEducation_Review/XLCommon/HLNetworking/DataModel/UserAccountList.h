//
//  UserAccountList.h
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;
@class Company;

@interface UserAccountList : NSObject
@property (nonatomic,strong) NSString  * accountId;
@property (nonatomic,strong) NSString  * acceptStatus;
@property (nonatomic,strong) Company   * company;
@property (nonatomic,strong) User      * user;
@end
