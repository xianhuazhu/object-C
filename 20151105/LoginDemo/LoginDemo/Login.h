//
//  Login.h
//  LoginDemo
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Login : NSObject

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *userpassword;

- (void)toRegister;

@end
