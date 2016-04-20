//
//  XLHomePageOperation.m
//  PilotEducation_Review
//
//  Created by mac on 16/3/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XLHomePageOperation.h"
#import "Api.h"
@interface XLHomePageOperation()<BaseApiDelegate>
@property (nonatomic,strong) Api  * api;
@property (nonatomic,strong) dispatch_semaphore_t semaphore;
@property (nonatomic,strong) id response;
@end


@implementation XLHomePageOperation

#pragma mark 初始化方法
- (id) init
{
    if (self = [super init]) {
        self.api = [[Api alloc] initWithDelegate:self needCommonProcess:NO];
        self.semaphore = dispatch_semaphore_create(0);
    }
    return self;
}
#pragma mark 获得首页
- (void)getHomePageCompleteBlock:(void (^)(id, NSError *))completeBlock {
    [self.api getHomePage];
//    [APSProgress showIndicatorView];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
        HttpResponse * myResponse = self.response;
        if (myResponse && myResponse.responseData) {
            NSError * error = nil;
            NSDictionary * resultDic = [NSJSONSerialization JSONObjectWithData:myResponse.responseData options:NSJSONReadingAllowFragments error:&error];
//            id object = [self customMethod:&resultDic className:@"RecentUse"];
            id object = resultDic;
            dispatch_async(dispatch_get_main_queue(), ^{
                completeBlock(object,nil);
            });
        }
    });
}
#pragma mark BaseApiDelegate
- (void)finishedWithRequest:(HttpRequest *)request
                   Response:(HttpResponse *)response
                   AndError:(NSError *)error
{
//    [APSProgress hidenIndicatorView];
    self.response = response;
    dispatch_semaphore_signal(self.semaphore);
}
@end
