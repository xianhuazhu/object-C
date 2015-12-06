//
//  Plant.m
//  PVZ
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "PVZObject.h"

@implementation PVZObject

+ (instancetype)pzWithName:(NSString *)name life:(int)life attack:(int)attack
{
    PVZObject *pz = [PVZObject new];
    [pz setName:name];
    [pz setLife:life];
    [pz setAttack:attack];
                    
    return pz;
}
                        
- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}

- (void)setLife:(int)life
{
    _life = life;
}
- (int)life
{
    return _life;
}

- (void)setAttack:(int)attack
{
    _attack = attack;
}
- (int)attack
{
    return _attack;
}

@end
