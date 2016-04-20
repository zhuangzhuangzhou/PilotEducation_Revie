//
//  Api.h
//  TeaLife
//
//  Created by Horrace Lin on 15-12-5.
//
//

#import <Foundation/Foundation.h>
#import "BaseApi.h"
#import "CommonCallback.h"
/*****************************************************手机号码即为用户账号********************************************************/
@interface Api : BaseApi
#pragma mark - 领航首页
/**
 *  获取首页数据
 */
- (void) getHomePage;



#pragma  mark - 常用
/*******************************************************常用********************************************************/

/**
 *  获取常用咖啡机
 *
 *  @param phoneNumber 手机号码
 */
- (void) getCommonlyUsedMachines:(NSString *) phoneNumber;
/**
 *  删除常用咖啡机
 *
 *  @param phoneNumber 手机号码
 *  @param machineId   咖啡机编号
 */
- (void) deleteMachine:(NSString *) phoneNumber machineId:(NSString *) machineId;
/**
 *  添加常用咖啡机
 *
 *  @param phoneNumber 手机号码
 *  @param machineId   咖啡机编号
 */
- (void) addNewMachine:(NSString *) phoneNumber machineId:(NSString *) machineId;
/**
 *  置顶
 *
 *  @param phoneNumber 手机号码
 *  @param machineId   咖啡机编号
 */
- (void) machineSetTopBy:(NSString *) phoneNumber machineId:(NSString *) machineId;
/**
 *  取消置顶
 *
 *  @param phoneNumber 手机号码
 *  @param machineId   咖啡机编号
 */
- (void) machineCancelTopBy:(NSString *) phoneNumber machineId:(NSString *) machineId;
/**
 *  获取咖啡机饮品
 *
 *  @param machineId 咖啡机编号
 */
- (void) getDrinks:(NSString *) machineId;
/**
 *  搜索咖啡机
 *
 *  @param type     搜索内容的类型,取值为machine
 *  @param keywords 搜索关键字
 */
- (void) searchMachine:(NSString *) type keywords:(NSString *) keywords;
/**
 *  获取文章列表
 *
 *  @param phoneNumber 手机号码
 */
- (void) getArticleList:(NSString *) phoneNumber companyId:(NSString *) companyId;

/*******************************************************我的********************************************************/
#pragma  mark - 我的
/**
 *  获取用户基本信息
 *
 *  @param phoneNumber 手机号码
 */
- (void) getBasicInfo:(NSString *) phoneNumber;
/**
 *  个人资料姓名修改
 *
 *  @param phoneNumber 手机号码
 *  @param nickName    新的姓名
 */
- (void) personalNameChange:(NSString *) phoneNumber nickName:(NSString *) nickName;
/**
 *  头像修改
 *
 *  @param imageName   图片名字
 *  @param imageData   图片数据
 */
- (void) uploadImage:(NSString *) imageName imageData:(NSString *) imageData;
/**
 *  获取订单列表
 *
 *  @param phoneNumber 手机号码
 */
- (void) getOrderList:(NSString *) phoneNumber;
/**
 *  获取优惠券列表
 *
 *  @param phoneNumber 手机号码
 *  @param companyId   企业编号
 */
- (void) getDicountCouponList:(NSString *) phoneNumber companyId:(NSString *) companyId;
/**
 *  搜索企业号
 *
 *  @param type     搜索内容的类型，为companyId
 *  @param keywords 搜索关键字
 */
- (void) searchCompany:(NSString *) type keywords:(NSString *) keywords;
/**
 *  加入企业
 *
 *  @param phoneNumber 手机号码
 *  @param companyId   企业编号
 *  @param joinInfo    申请信息
 */
- (void) joinCompany:(NSString *) phoneNumber companyId:(NSString *) companyId joinInfo:(NSString *) joinInfo;
/*******************************************************登录注册********************************************************/
#pragma  mark - 登录注册

/**
 *  获取手机验证码
 *
 *  @param phoneNumber 手机号码
 */
- (void) vericodeGet:(NSString *) phoneNumber;
/**
 *  验证短信验证码
 *
 *  @param phoneNumber 手机号码
 *  @param code        验证码
 */
- (void) verifyVericode:(NSString *) phoneNumber verifyCode:(NSString *) code;

/*******************************************************支付********************************************************/
#pragma  mark - 支付
/**
 *  支付成功生成订单
 *
 *  @param orderId          订单编号
 *  @param phoneNumber      手机号码
 *  @param orderName        订单标题
 *  @param originalPrice    原价
 *  @param price            实际支付金额
 *  @param machineId        咖啡机编号
 *  @param couponId         优惠券编号
 */
- (void) paySuccessGenerateOrder:(NSString *) orderId
                     phoneNumber:(NSString *) phoneNumber
                       orderName:(NSString *) orderName
                   originalPrice:(NSString *) originalPrice
                           price:(NSString *) price
                       machineId:(NSString *) machineId
                        couponId:(NSString *) couponId;


-(void) checkUpdate;


-(void) registApplicationWithAppId:(NSString *) appId appSecret:(NSString *) appSecret;
@end
