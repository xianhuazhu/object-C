//
//  main.m
//  拆分画图2
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Shape.h"
#import "Triangle.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Shape *sp1 = [Shape Shape:Cred andShapeRect:(SpArea){10,10,100,10}];
        [sp1 draw];
        
        Triangle *tg1 = [Triangle doWithTriangle:Cpurple andRect:(SpArea){19,19,90,9}];
        [tg1 setBase:20];
        [tg1 draw];
        
        Circle *c1 = (Circle *)[Shape Shape:Cblack andShapeRect:(SpArea){12,12,100,10}];
        
        [c1 setColor:Cpurple];
        [c1 draw];
        Circle *c = [Circle new];
         [c setRadius:18];
         [c draw];
        
    }
    return 0;
}
