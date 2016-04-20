//
//  Machine.m
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import "Machine.h"
#import "Company.h"
@implementation Machine

- (id)copyWithZone:(nullable NSZone *)zone
{
    Machine * copy = [[Machine alloc] init];
    
    copy.machineId = [self.machineId copyWithZone:zone];
    copy.name = [self.name copyWithZone:zone];
    copy.thumb = [self.thumb copyWithZone:zone];
    copy.address = [self.address copyWithZone:zone];
    copy.company = [self.company copyWithZone:zone];
    return copy;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone
{
    Machine * copy = [[Machine alloc] init];
    
    copy.machineId = [self.machineId mutableCopyWithZone:zone];
    copy.name = [self.name mutableCopyWithZone:zone];
    copy.thumb = [self.thumb mutableCopyWithZone:zone];
    copy.address = [self.address mutableCopyWithZone:zone];
    copy.company = [self.company mutableCopyWithZone:zone];
    return copy;
}
@end
