//
//  Engine.h
//  Car
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Car.h"

@interface Engine : Car
{
    NSString *_name;
    int _power;
}

- (NSString *)name;

- (int)power;

- (instancetype)init;

@end
