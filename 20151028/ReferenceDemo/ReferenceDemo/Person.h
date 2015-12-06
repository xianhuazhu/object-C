//
//  Person.h
//  ReferenceDemo
//
//  Created by qingyun on 15/10/28.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}

- (void)jump;

- (void)setName:(NSString *)name;

@end
