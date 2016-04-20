//
//  RecentUse.h
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;
@class Machine;

@interface RecentUse : NSObject
@property (nonatomic,strong) NSString  * recentUseId;
@property (nonatomic,strong) NSString  * isTop;
@property (nonatomic,strong) NSString  * click;
@property (nonatomic,strong) User      * user;
@property (nonatomic,strong) Machine   * machine;
@property (nonatomic,assign) BOOL        isEditing;
@end
