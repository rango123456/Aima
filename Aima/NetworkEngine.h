//
//  NetworkEngine.h
//  Aima
//
//  Created by rango on 15/2/26.
//  Copyright (c) 2015年 rango. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIFormDataRequest.h"

#define BaseUrl @"http://api.f02.cn/http.do?action=" //基本地址


#define ACTION_Login          @"loginIn"//登录
#define ACTION_SendSms        @"sendSms"//发短信
#define ACTION_GetUserInfos   @"getUserInfos"//获取个人信息
#define ACTION_GetMobilenum   @"getMobilenum"//获取手机号码
#define ACTION_AddIgnoreList  @"addIgnoreList"//加黑无用号码
#define ACTION_GetSmsStatus   @"getSmsStatus"//获取短信发送状态
#define ACTION_GetRecvingInfo @"getRecvingInfo"//已获取号码列表
#define ACTION_GetVcodeAndReleaseMobile @"getVcodeAndReleaseMobile"//获取验证码并不再使用本号
#define ACTION_GetVcodeAndHoldMobilenum @"getVcodeAndHoldMobilenum"//获取验证码并继续使用本号

@interface NetworkEngine : NSObject
+(NetworkEngine*)defaultEngine;

-(void)requestWithAction:(NSString*)action
                  params:(NSDictionary*)params
               andResult:(void(^)(id result))onFinishedResult;
@end
