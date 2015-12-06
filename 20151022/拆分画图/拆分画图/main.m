//
//  main.m
//  拆分画图
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Triangle.h"

int main(int argc, const char * argv[]) {

        Shape *sp = [Shape new];
        [sp setColor:Kblue];
        [sp setRect:(SPRect){10,20,50,100}];
        [sp draw];
        
        Triangle *tg = [Triangle shapeWithColor:Kyellow andRect:(SPRect){100,100,20,25}];
        
        [tg setFoot:100];
        
        [tg draw];
        
    
    return 0;
}
