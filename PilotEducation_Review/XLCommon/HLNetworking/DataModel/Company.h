//
//  Company.h
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Company : NSObject<NSCopying,NSMutableCopying>
@property (nonatomic,strong) NSString  * companyId;
@property (nonatomic,strong) NSString  * name;
@property (nonatomic,strong) NSString  * address;
@property (nonatomic,strong) NSString  * password;
@property (nonatomic,strong) NSString  * thumb;
@property (nonatomic,strong) NSString  * simpleName;
@property (nonatomic,assign) BOOL        isInJoin;
@end
