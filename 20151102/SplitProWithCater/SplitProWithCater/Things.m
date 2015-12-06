//
//  Things.m
//  SplitProWithCater
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "Things.h"

@implementation Things

- (void)print
{
    NSLog(@"%ld,%ld,%ld,%ld,%ld",self.thing1, self.thing2, self.thing3,self.thing4, self.thing5);
}

- (void)resetAllValue
{
    self.thing1 = 100;
    self.thing2 = 200;
}

@end
