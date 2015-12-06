//
//  QYManager.h
//  wan
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYSeceraty;

@interface QYManager : NSObject

@property (nonatomic, strong) QYSeceraty *delegate;

- (void)startWork;

@end
