//
//  Things.h
//  SplitProWithCater
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Things : NSObject
{
    NSUInteger _thing1;
    NSUInteger _thing2;
    NSUInteger _thing3;
    NSUInteger _thing4;
    NSUInteger _thing5;
}

- (void)resetAllValue;

- (void)print;

@end

@interface Things (thing1)

- (void)setThing1:(NSUInteger)thing1;
- (NSUInteger)thing1;

@end

@interface Things (thing2)

- (void)setThing2:(NSUInteger)thing2;
- (NSUInteger)thing2;

@end

@interface Things (thing3)

- (void)setThing3:(NSUInteger)thing3;
- (NSUInteger)thing3;

@end

@interface Things (thing4)

- (void)setThing4:(NSUInteger)thing4;
- (NSUInteger)thing4;

@end

@interface Things (thing5)

- (void)setThing5:(NSUInteger)thing5;
- (NSUInteger)thing5;

@end