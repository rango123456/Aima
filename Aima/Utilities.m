//
//  Utilities.m
//  Aima
//
//  Created by rango on 15/2/26.
//  Copyright (c) 2015年 rango. All rights reserved.
//

#import "Utilities.h"

@implementation Utilities

+(void)saveUserDefaultWithKeyValue:(NSString*)key Value:(id)value {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (value == nil) {
        
        [defaults setObject:[NSNull null] forKey:key];
    } else {
        
        [defaults setObject:value forKey:key];
        
    }
    
    [defaults synchronize];
}
+(id)valueForUserDefaultWithKey:(NSString*)key {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return[defaults valueForKey:key];
    
}
+(void)removeValueForUserDefaultWith:(NSString*)key{
    
    NSUserDefaults *defaluts = [NSUserDefaults standardUserDefaults];
    
    [defaluts removeObjectForKey:key];
    
    [defaluts synchronize];
    
    
}
@end
