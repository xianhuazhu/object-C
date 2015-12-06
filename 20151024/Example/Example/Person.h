//
//  Person.h
//  Example
//
//  Created by qingyun on 15/10/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Person : NSObject
{
    NSString *_name;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

@end
