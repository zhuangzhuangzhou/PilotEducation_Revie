//
//  XLHomePageOperation.h
//  PilotEducation_Review
//
//  Created by mac on 16/3/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XLHomePageOperation : NSObject
/**
 *  获取首页
 *
 *  @param completeBlock 操作完成回调block
 */
- (void) getHomePageCompleteBlock:(void(^)(id result, NSError *error))completeBlock;

@end
