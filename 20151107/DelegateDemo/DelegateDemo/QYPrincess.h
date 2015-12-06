//
//  QYPrincess.h
//  DelegateDemo
//
//  Created by qingyun on 15/11/2.
//  Copyright (c) 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYPrince;
@interface QYPrincess : NSObject

@property (nonatomic,strong)id delegate;

- (void)sleep;
@end
