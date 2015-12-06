//
//  Baby.h
//  BabyCry
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Norse;
#import "doSomething.h"

@interface Baby : NSObject

@property (nonatomic, strong) Norse <doSomething> *delegate;

- (void)babyCry;

@end
