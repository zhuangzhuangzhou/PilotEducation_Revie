//
//  Machine.h
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Company;

@interface Machine : NSObject<NSCopying,NSMutableCopying>
@property (nonatomic,strong) NSString  * machineId;
@property (nonatomic,strong) NSString  * name;
@property (nonatomic,strong) NSString  * address;
@property (nonatomic,strong) NSString  * thumb;
@property (nonatomic,strong) Company   * company;
@end
