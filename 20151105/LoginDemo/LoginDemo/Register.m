//
//  Register.m
//  LoginDemo
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Register.h"

@implementation Register

- (void)write
{
    _name = @"qingyun";
    _pwd = @"000";
}

//回登陆界面（同时，使得注册的用户名和密码与登陆的相同）
- (void)toLogin
{
    NSLog(@"注册成功，请回登陆界面！");
    _block(_name, _pwd);
    
}

@end
