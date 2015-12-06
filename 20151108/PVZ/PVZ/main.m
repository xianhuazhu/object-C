//
//  main.m
//  PVZ
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Plant.h"
#import "Zombie.h"
#import "PZFight.h"

int main(int argc, const char * argv[]) {
    
    Plant *pie = [Plant pzWithName:@"豌豆杀手" life:100 attack:10];
    Zombie *zombie = [Zombie pzWithName:@"普通僵尸" life:50 attack:20];
   
    PZFight *fight = [PZFight new];
    [fight setPlant:pie];
    [fight setZombie:zombie];
    [fight setRound:5];
    [fight fight];
    
    return 0;
}
