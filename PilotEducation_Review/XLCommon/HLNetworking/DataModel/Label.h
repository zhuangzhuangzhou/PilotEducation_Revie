//
//  Label.h
//  TeaLife
//
//  Created by Local on 15/12/13.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Label : NSObject
@property (nonatomic,strong) NSString * labelId;
@property (nonatomic,strong) NSString * name;
@property (nonatomic,strong) NSArray  * drinks;
@property (nonatomic,assign) BOOL       isSelected;
@end
