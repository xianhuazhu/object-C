//
//  PZFight.h
//  PVZ
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Plant;
@class Zombie;

@interface PZFight : NSObject
{
    Plant *_plant;
    Zombie *_zombie;
    int _round;//打几回合
}

- (void)setPlant:(Plant *)plant;
- (Plant *)plant;

- (void)setZombie:(Zombie *)zombie;
- (Zombie *)zombie;

- (void)setRound:(int)round;
- (int)round;

- (void)fight;

@end
