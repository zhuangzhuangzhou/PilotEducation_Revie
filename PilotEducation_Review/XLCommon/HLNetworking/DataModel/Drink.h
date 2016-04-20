//
//  Drink.h
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Machine;

@interface Drink : NSObject<NSCopying,NSMutableCopying>
@property (nonatomic,strong) NSString  * drinkId;
@property (nonatomic,strong) NSString  * name;
@property (nonatomic,strong) NSString  * thumb;
@property (nonatomic,strong) NSString  * price;
@property (nonatomic,strong) NSString  * capacity;
@property (nonatomic,strong) Machine   * machine;
@property (nonatomic,strong) NSArray   * subDrinks;
@end
