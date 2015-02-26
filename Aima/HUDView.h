//
//  HUDView.h
//  Aima
//
//  Created by rango on 15/2/26.
//  Copyright (c) 2015年 rango. All rights reserved.
//

#import "MBProgressHUD.h"

@interface HUDView : MBProgressHUD

+(id)showWithOnlyText:(NSString*)text;
+(id)showWithIndicator:(NSString*)text;//传nil 用默认的

+(void)hide;

@end
