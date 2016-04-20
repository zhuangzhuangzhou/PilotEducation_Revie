

//
//  Drink.m
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import "Drink.h"
#import "Machine.h"
@implementation Drink

- (id)copyWithZone:(nullable NSZone *)zone
{
    Drink * copy = [[Drink alloc] init];
    
    copy.drinkId = [self.drinkId copyWithZone:zone];
    copy.name = [self.name copyWithZone:zone];
    copy.thumb = [self.thumb copyWithZone:zone];
    copy.price = [self.price copyWithZone:zone];
    copy.capacity = [self.capacity copyWithZone:zone];
    copy.machine = [self.machine copyWithZone:zone];
    
    return copy;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone
{
    Drink * copy = [[Drink alloc] init];
    
    copy.drinkId = [self.drinkId mutableCopyWithZone:zone];
    copy.name = [self.name mutableCopyWithZone:zone];
    copy.thumb = [self.thumb mutableCopyWithZone:zone];
    copy.price = [self.price mutableCopyWithZone:zone];
    copy.capacity = [self.capacity mutableCopyWithZone:zone];
    copy.machine = [self.machine mutableCopyWithZone:zone];
    
    return copy;
}
@end
