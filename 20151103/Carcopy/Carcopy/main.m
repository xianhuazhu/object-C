//
//  main.m
//  Carcopy
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Car.h"
#import "Tire.h"
#import "GenernalCar.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *car = [[Car alloc] init];
    
        car.brand = @"兰博基尼";
        
        Tire *tire = [[Tire alloc] init];
        tire.name = @"米其林";
        car.tire = tire;
        
        //以下皆为一次性拷贝
        //拷贝一辆车
        //Car *car1 = car;//浅拷贝
        Car *car2 = [[Car alloc] init];//深拷贝
        car2.brand = car.brand;
        car2.tire = car.tire;
        
        //调用copy方法来拷贝
       Car *car4 = [car copy];//copy这个方法并不是实现对象拷贝的真正方法，他需要调用copyWithZone来拷贝对象，此方法在NSCopying协议中有规定,所以想要调用copy需要遵循NSCopying这个协议，并且实现copyWithZone：这个方法。
        NSLog(@"brand:%@,tire:%@",car.brand,car.tire);
        NSLog(@"brand:%@,tire:%@",car4.brand,car4.tire);
        NSLog(@"%p,%p",car,car4);
        
        car.tire.name = @"邓禄普";
        car4.tire.name = @"普利司通";
        NSLog(@"car >>>>>>> %@",car.tire.name);
        NSLog(@"car4 >>>>>>> %@",car4.tire.name);
        
        //在继承中使用copy
        GenernalCar *cruze = [[GenernalCar alloc] init];
        cruze.brand = @"通用";
        cruze.tire = [[Tire alloc] init];
        cruze.tire.name = @"固特琪";
        cruze.price = 1000000;
        GenernalCar *cruze1 = [cruze copy];
        NSLog(@"%@,%@,%d",cruze1.brand,cruze1.tire.name,cruze1.price);
    }
    return 0;
}
