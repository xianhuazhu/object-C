//
//  main.m
//  LoginDemo
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Register.h"
#import "Login.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //登陆界面
        Login *login = [[Login alloc] init];
        NSLog(@"登陆界面加载中");
        [login toRegister];
        NSLog(@"登陆界面加载中");
        //注册界面

        NSLog(@"name :%@, password：%@",login.username, login.userpassword);
    }
    return 0;
}
