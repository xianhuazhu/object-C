//
//  Car.h
//  BlockPractic
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^myBlockDemo) (void);

@interface Car : NSObject

@property (nonatomic) int price;

@property (nonatomic, strong) myBlockDemo blockOne;

- (void)doSomething:(myBlockDemo)something;

@end
