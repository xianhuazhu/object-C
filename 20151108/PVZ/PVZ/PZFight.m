//
//  PZFight.m
//  PVZ
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "PZFight.h"

#import "Plant.h"
#import "Zombie.h"

@implementation PZFight

- (void)setPlant:(Plant *)plant
{
    _plant = plant;
}
- (Plant *)plant
{
    return _plant;
}

- (void)setZombie:(Zombie *)zombie
{
    _zombie = zombie;
}
- (Zombie *)zombie
{
    return _zombie;
}

- (void)setRound:(int)round
{
    _round = round;
}
- (int)round
{
    return _round;
}

- (void)fight;
{
    _round = 5;
    for (int i = 0; i < _round; i++) {
        [_plant setLife:([_plant life] - [_zombie attack])];
        [_zombie setLife:([_zombie life] - [_plant attack])];
    }
    if ([_plant life] <= 0) {
        NSLog(@"%@ died",[_plant name]);
    }else if ([_zombie life] <= 0)
    {
        NSLog(@"%@ died",[_zombie name]);
    }
}

@end
