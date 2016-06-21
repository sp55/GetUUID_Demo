//
//  ViewController.m
//  GetUDID_Demo
//
//  Created by admin on 16/6/21.
//  Copyright © 2016年 AlezJi. All rights reserved.
//http://www.jianshu.com/p/8bcda4fecee1
//iOS 获取设备的唯一标识

#import "ViewController.h"
#import "UUIDHelper.h"


NSString * const KEY_PASSWORD = @"UUID";
NSString * const KEY_USERUUID = @"USERUUID";

@interface ViewController ()

@property (nonatomic, strong) NSString *UUID;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //拿到设备的UUID
    NSString *identifierStr = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:identifierStr forKey:KEY_PASSWORD];
    
    
    //UUID = "01E26FAA-DE8D-4897-8119-5A8F8DF3B2B5";
    
    NSLog(@"===%@",usernamepasswordKVPairs);
    
    //存储设备的UUID
    [UUIDHelper save:KEY_USERUUID data:usernamepasswordKVPairs];
    
    //从钥匙串拿出UUID
    self.UUID = [(NSMutableDictionary *)[UUIDHelper load:KEY_USERUUID]objectForKey:KEY_PASSWORD];
}
@end
