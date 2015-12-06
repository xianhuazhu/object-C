//
//  QYManager.h
//  ManagerSecretary
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYSecretary;

@interface QYManager : NSObject

//为经理设置一个秘书类的对象作为委托
@property (nonatomic, strong) QYSecretary *delegate;

- (void)startWork;

@end
