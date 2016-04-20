//
//  MachineMaintainer.h
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;
@class Machine;

@interface MachineMaintainer : NSObject
@property (nonatomic,strong) NSString  * machineMaintainerId;
@property (nonatomic,strong) User      * user;
@property (nonatomic,strong) Machine   * machine;
@end
