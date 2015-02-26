//
//  NetworkEngine.m
//  Aima
//
//  Created by rango on 15/2/26.
//  Copyright (c) 2015年 rango. All rights reserved.
//

#import "NetworkEngine.h"
#import "JSONKit.h"
@implementation NetworkEngine

static NetworkEngine *defaultEngine= nil;

+(NetworkEngine*)defaultEngine {
    
    @synchronized(defaultEngine){
        
        if (!defaultEngine) {
            
            defaultEngine = [[NetworkEngine alloc]init];
            
        }
        
        
    }
    
    return defaultEngine;
    
}

-(void)requestWithAction:(NSString*)action
                  params:(NSDictionary*)params
               andResult:(void(^)(id result))onFinishedResult {
    
    
    NSString *urlString = [[NSString stringWithFormat:@"%@%@",BaseUrl,action]stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURL *url = [NSURL URLWithString:urlString];
    
   __weak ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
    
    
    [request setRequestMethod:@"POST"];
    
    NSArray *keys = [params allKeys];
    
    for (NSString *key in keys) {
        
        [request setPostValue:[params objectForKey:key] forKey:key];
        
    }
    
    [request setCompletionBlock:^{
    
        onFinishedResult(request.responseString.objectFromJSONString);
        
    }];
    
    [request setFailedBlock:^{
       
        onFinishedResult(nil);
        
    }];
    
    [request startAsynchronous];
    
}

@end
