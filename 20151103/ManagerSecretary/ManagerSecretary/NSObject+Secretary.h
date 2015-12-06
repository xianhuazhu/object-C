//
//  NSObject+Secretary.h
//  ManagerSecretary
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

//NSObject添加类别，里面新添加的方法可以被任何对象调用，属于非正式协议
@interface NSObject (Secretary)

- (void)phoneCall:(NSString *)something;

- (void)bookTicket;

@end
