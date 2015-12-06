//
//  main.m
//  QYCar
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYCar.h"
#import "Tire.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       
        Tire *te = [Tire new];
        [te setBrand:@"米其林"];
        [te setStripe:@"横向花纹"];
        [te setPressure:0.25];
        
        QYCar *ca = [QYCar new];
        [ca setPrice:200000];
        [ca setBrand:@"劳斯莱斯"];
        [ca setTire:te];
        [ca draw];
        
        for (int i = 0; i < 4; i++) {
            Tire *tr = [Tire new];
            [tr setBrand:<#(NSString *)#>]
        }
        
        NSLog(@"%@",[ca description]);
        
    }
    return 0;
}
