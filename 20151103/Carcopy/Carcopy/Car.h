//
//  Car.h
//  Carcopy
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Tire;

@interface Car : NSObject <NSCopying>

@property (nonatomic, strong) NSString *brand;

@property (nonatomic, strong) Tire *tire;

@end
