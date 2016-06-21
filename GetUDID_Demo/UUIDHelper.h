//
//  UUIDHelper.h
//  GetUDID_Demo
//
//  Created by admin on 16/6/21.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UUIDHelper : NSObject
//存
+ (void)save:(NSString *)service data:(id)data;

//取
+ (id)load:(NSString *)service;
@end
