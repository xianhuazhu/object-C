//
//  Engine.h
//  内存管理
//
//  Created by qingyun on 15/10/28.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject
{
    NSString *_brand;
    float _power;
}

- (void)setBrand:(NSString *)brand;

- (void)setPower:(float)power;

@end
