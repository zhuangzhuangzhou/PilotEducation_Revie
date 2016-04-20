//
//  Company.m
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import "Company.h"

@implementation Company

- (id)copyWithZone:(nullable NSZone *)zone
{
    Company * copy = [[Company alloc] init];
    
    copy.companyId = [self.companyId copyWithZone:zone];
    copy.name = [self.name copyWithZone:zone];
    copy.thumb = [self.thumb copyWithZone:zone];
    copy.address = [self.address copyWithZone:zone];
    copy.password = [self.password copyWithZone:zone];
    copy.simpleName = [self.simpleName copyWithZone:zone];
    
    return copy;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone
{
    Company * copy = [[Company alloc] init];
    
    copy.companyId = [self.companyId mutableCopyWithZone:zone];
    copy.name = [self.name mutableCopyWithZone:zone];
    copy.thumb = [self.thumb mutableCopyWithZone:zone];
    copy.address = [self.address mutableCopyWithZone:zone];
    copy.password = [self.password mutableCopyWithZone:zone];
    copy.simpleName = [self.simpleName mutableCopyWithZone:zone];
    return copy;
}

@end
