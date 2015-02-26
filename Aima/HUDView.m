//
//  HUDView.m
//  Aima
//
//  Created by rango on 15/2/26.
//  Copyright (c) 2015年 rango. All rights reserved.
//

#import "HUDView.h"

@implementation HUDView

static HUDView *HUD;

+(id)showWithOnlyText:(NSString *)text{
    
    @synchronized(HUD){
        
        
        UIWindow *window = [[[UIApplication sharedApplication]windows]objectAtIndex:0];
        
        if (!HUD) {
            
            HUD = [[HUDView alloc]initWithView:window];
            [window addSubview:HUD];
            
        }
        HUD.mode = MBProgressHUDModeText;
        HUD.labelText = text;
        [HUD show:YES];
        [HUD hide:YES afterDelay:1.5];
    }
    
    return HUD;
    
}
+(id)showWithIndicator:(NSString *)text{
    
    @synchronized(HUD){
        
        
        UIWindow *window = [[[UIApplication sharedApplication]windows]objectAtIndex:0];
        
        if (!HUD) {
            
            HUD = [[HUDView alloc]initWithView:window];
            [window addSubview:HUD];
        }
        
        if (text) {
            
            HUD.labelText = text;
            
        } else {
            
          HUD.labelText = @"加载中,请稍后...";
            
        }
        
        HUD.mode = MBProgressHUDModeIndeterminate;
        [HUD show:YES];
        return HUD;
        
    }
    
    
}
+(void)hide {
    
    if (HUD) {
        
        [HUD hide:YES];
        HUD = Nil;
        
    }
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
