//
//  Drinks.h
//  TeaLife
//
//  Created by Local on 15/12/13.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Drink;
@class Label;
@interface Drinks : NSObject
@property (nonatomic,strong) NSArray * drinks;
@property (nonatomic,strong) Label   * label;
@end
