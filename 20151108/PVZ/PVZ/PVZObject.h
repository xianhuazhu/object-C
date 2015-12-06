//
//  Plant.h
//  PVZ
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PVZObject : NSObject

{
    NSString *_name;
    int _life;
    int _attack;
}

+ (instancetype)pzWithName:(NSString *)name life:(int)life attack:(int)attack;

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setLife:(int)life;
- (int)life;

- (void)setAttack:(int)attack;
- (int)attack;

@end
