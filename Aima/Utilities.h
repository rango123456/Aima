//
//  Utilities.h
//  Aima
//
//  Created by rango on 15/2/26.
//  Copyright (c) 2015年 rango. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utilities : NSObject

//保存数据到本地
+(void)saveUserDefaultWithKeyValue:(NSString*)key Value:(id)value;
+(id)valueForUserDefaultWithKey:(NSString*)key;
+(void)removeValueForUserDefaultWith:(NSString*)key;

@end
