//
//  Baby.h
//  BabyPrictice
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Norse;

@interface Baby : NSObject

- (void)babyCry;

@property (nonatomic, strong) id delegate;

@end
