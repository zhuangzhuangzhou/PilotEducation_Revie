//
//  Constant.h
//  PilotEducation_Review
//
//  Created by mac on 16/3/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#ifndef Constant_h
#define Constant_h



#import "RMMapper.h"
#import "HLAlertManager.h"
#import "NSString+CMUtils.h"
#import "HLKeyboardUtil.h"
#import "NSString+ThreeDESUtil.h"
#import "HLImageUtil.h"
//定义常量
static NSString *const KHOST = @"";
static NSString *const KHOST_IMAGE = @"";
static NSString *const KPHONE_NUMBER = @"PHONE_NUMBER";
//预编译指令
#define KDEVICE_VERSION  ([[UIDevice currentDevice].systemVersion doubleValue])
//屏幕宽高
#define KSCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define kSCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
//获取ST中VC
#define KSTORYBOAED_ACQUIRE_CONTROLLER(STNAME,VCNAME) \
[[UIStoryboard storyboardWithName:STNAME bundle:nil] instantiateViewControllerWithIdentifier:VCNAME]
//自定义打印
#ifdef DEBUG
#define DLog(format, ...) NSLog((@"[文件名:%s]" "[函数名:%s]" "[行号:%d]" format), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define DLog(...);
#endif

#endif /* Constant_h */
