//
//  Articel.h
//  TeaLife
//
//  Created by Local on 15/12/5.
//  Copyright © 2015年 administrater. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Company;
@interface Article : NSObject
@property (nonatomic,strong) NSString  * articleId;
@property (nonatomic,strong) NSString  * title;
@property (nonatomic,strong) NSString  * contentThumb;
@property (nonatomic,strong) NSString  * briefContent;
@property (nonatomic,strong) NSString  * createTime;
@property (nonatomic,strong) NSString  * url;
@property (nonatomic,strong) Company   * company;
@end
