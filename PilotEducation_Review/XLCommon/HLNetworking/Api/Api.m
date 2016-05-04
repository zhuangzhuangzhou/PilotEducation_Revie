//
//  Api.m
//  TeaLife
//
//  Created by Horrace Lin on 15-12-5.
//
//

#import "Api.h"

@implementation Api

- (void)sendRequestWithUrl:(NSString *)apiUrl Method:(NSString *)method AndParams:(NSDictionary *)paramsDict
{
    HttpRequest *req = [[HttpRequest alloc] initWithUrl:apiUrl method:method params:paramsDict];
    req.identifier = req.url;
    [req setTimeoutInterval:100];
    [req setCookieWithCookiesArray:[self getCookie:req]];
    [super sendRequest:req];
}

-(NSArray *)getCookie:(HttpRequest *)req
{
    NSArray *cookies=[NSHTTPCookieStorage sharedHTTPCookieStorage].cookies;
    NSMutableArray *array=[[NSMutableArray alloc] init];
    for (int i=0; i<[cookies count]; i++) {
        NSHTTPCookie *cookie=[cookies objectAtIndex:i];
        if ([req.url containsString:cookie.domain]) {
            [array addObject:[cookies objectAtIndex:i]];
        }
    }
    return array;
}

#pragma mark - 首页
- (void) getHomePage {
    NSString *apiUrl=[NSString stringWithFormat:@"%@", @"http://app.chinaneg.com/Api/index/getIndexInfo"];
    NSDictionary *params=@{@"data":@""};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}



#pragma  mark - 常用
- (void) getCommonlyUsedMachines:(NSString *) phoneNumber {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/recentUse/getMachines"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) deleteMachine:(NSString *) phoneNumber machineId:(NSString *) machineId {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/recentUse/delete"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber,@"machineId":machineId};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) addNewMachine:(NSString *) phoneNumber machineId:(NSString *) machineId {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/recentUse/add"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber,@"machineId":machineId};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) machineSetTopBy:(NSString *) phoneNumber machineId:(NSString *) machineId {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/recentUse/setTop"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber,@"machineId":machineId};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) machineCancelTopBy:(NSString *) phoneNumber machineId:(NSString *) machineId {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/recentUse/cancelTop"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber,@"machineId":machineId};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) getDrinks:(NSString *) machineId {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/drink/getDrinks"];
    NSDictionary *params=@{@"machineId":machineId};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) searchMachine:(NSString *) type keywords:(NSString *) keywords {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/search/keywords"];
    //    NSString * urlstr = [keywords stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSData *data = [keywords dataUsingEncoding:enc];
    NSString *retStr = [[NSString alloc] initWithData:data encoding:enc];
    
    NSDictionary *params=@{@"type":type,@"keywords":retStr};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) getArticleList:(NSString *) phoneNumber companyId:(NSString *) companyId{
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/article/get"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber,@"companyId":companyId};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

#pragma  mark - 我的
- (void) personalNameChange:(NSString *) phoneNumber nickName:(NSString *) nickName {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/user/modify"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber,@"nickName":nickName};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) getOrderList:(NSString *) phoneNumber {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/order/get"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) getDicountCouponList:(NSString *) phoneNumber companyId:(NSString *) companyId {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/coupon/get"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber,@"companyId":companyId};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) searchCompany:(NSString *) type keywords:(NSString *) keywords {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/search/keywords"];
    NSDictionary *params=@{@"type":type,@"keywords":keywords};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) joinCompany:(NSString *) phoneNumber companyId:(NSString *) companyId joinInfo:(NSString *) joinInfo{
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/company/join"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber,@"companyId":companyId,@"joinInfo":joinInfo};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) vericodeGet:(NSString *) phoneNumber{
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/sms/get"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) verifyVericode:(NSString *) phoneNumber verifyCode:(NSString *) code {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/sms/vertify"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber,@"code":code};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

#pragma  mark - 支付
- (void) paySuccessGenerateOrder:(NSString *) orderId
                     phoneNumber:(NSString *) phoneNumber
                       orderName:(NSString *) orderName
                   originalPrice:(NSString *) originalPrice
                           price:(NSString *) price
                       machineId:(NSString *) machineId
                        couponId:(NSString *) couponId
{
    
    //    NSDictionary * dicOI = @{@"orderId":orderId};
    //    NSDictionary * dicPN = @{@"phoneNumber":phoneNumber};
    //    NSDictionary * dicON = @{@"orderName":orderName};
    //    NSDictionary * dicOrder = @{@"originalPrice":originalPrice};
    //    NSDictionary * dicPrice = @{@"paidPrice":price};
    //    NSDictionary * dicMI = @{@"machineId":machineId};
    //    NSDictionary * dicCI = @{@"couponId":couponId};
    //
    //    NSArray  * dicArray = [[NSArray alloc] initWithObjects:dicOI,dicPN,dicON,dicOrder,dicPrice,dicMI,dicCI,nil];
    //    NSString * paramStr = [self generateParamByDic:dicArray];
    
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/order/paid"];
    
    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSData *data = [orderName dataUsingEncoding:enc];
    NSString *retStr = [[NSString alloc] initWithData:data encoding:enc];
    
    //    NSDictionary *params=@{@"key":paramStr};
    if (!couponId) {
        couponId = @"0123456789";
    }
    NSDictionary * params = @{@"id":orderId,@"phoneNumber":phoneNumber,@"orderName":retStr,@"originalPrice":originalPrice,@"paidPrice":price,@"machineId":machineId,@"couponId":couponId};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (NSString *) generateParamByDic:(NSArray *) array
{
    NSMutableString * paramString = [[NSMutableString alloc] init];
    for (NSDictionary * dic in array) {
        NSInteger idx = [array indexOfObject:dic];
        NSString * key = dic.allKeys.firstObject;
        NSString * value = [dic objectForKey:key];
        if (idx == array.count - 1) {
            [paramString appendString:[NSString stringWithFormat:@"%@=%@",key,value]];
        }
        else
        {
            [paramString appendString:[NSString stringWithFormat:@"%@=%@&",key,value]];
        }
    }
    return paramString;
}

- (void) getBasicInfo:(NSString *) phoneNumber {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/user/getBasicInfo"];
    NSDictionary *params=@{@"phoneNumber":phoneNumber};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

- (void) uploadImage:(NSString *) imageName imageData:(NSString *) imageData {
    NSString *apiUrl=[NSString stringWithFormat:@"%@%@",KHOST,@"api/image/upload"];
    NSUserDefaults * config = [NSUserDefaults standardUserDefaults];
    NSDictionary *params=@{@"imageName":imageName,@"imageData":imageData,@"phoneNumber":[config objectForKey:KPHONE_NUMBER]};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}

-(void) checkUpdate
{
    NSString * apiUrl = [NSString stringWithFormat:@"%@%@",KHOST,@"api/version/check"];
    NSDictionary *params=@{@"currentVersion":[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]};
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:params];
}


-(void) registApplicationWithAppId:(NSString *) appId appSecret:(NSString *) appSecret {
    NSString * apiUrl = [NSString stringWithFormat:@"%@%@",@"https://www.happyfi.com/",@"hfloan/verifyAccount"];
    DLog(@"visit url = %@",apiUrl);
    NSDictionary * param = [NSDictionary dictionaryWithObjectsAndKeys:appId,@"authApp",appSecret,@"authKey", nil];
    [self sendRequestWithUrl:apiUrl Method:@"POST" AndParams:param];
}
@end

