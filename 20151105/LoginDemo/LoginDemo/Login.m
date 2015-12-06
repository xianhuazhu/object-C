//
//  Login.m
//  LoginDemo
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Login.h"

#import "Register.h"

@implementation Login

- (void)toRegister
{
    Register *reg = [[Register alloc] init];
    void (^callBack) (NSString *, NSString *) = ^(NSString *name, NSString *pwd){
        _username = name;
        _userpassword = pwd;
    };
    reg.block = callBack;
    
    NSLog(@"填写信息！");
    [reg write];
    [reg toLogin];
}
@end
