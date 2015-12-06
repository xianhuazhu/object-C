//
//  main.m
//  QYPersonTwo
//
//  Created by qingyun on 15/10/23.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYPerson.h"
#import "QYTeacher.h"
#import "QYStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        QYPerson *qpn1 = [QYPerson new];
        [qpn1 setName:@"景宁"];
        [qpn1 setAge:10];
        [qpn1 setSex:@"女"];
        
        [qpn1 eatWithSomething:@"蛋糕"];
        [qpn1 andSleep:@"睡觉"];
        [qpn1 BubbleSpinner:@"打豆豆"];

         
        QYTeacher *ter = [QYTeacher new];
        [ter setName:@"佩佩"];
        [ter setSex:@"男"];
        [ter setAge:25];
        [ter setStage:@"三"];
        [ter setYearsOfWorking:5];
        [ter setSalary:10000.0];
        [ter draw];
        
        
        QYStudent *st = [QYStudent new];
        [st setName:@"小明"];
        [st setSex:@"男"];
        [st setAge:25];
        [st setSchool:@"万方"];
        [st setGrade:4];
        [st draw];
        [st aTeacher:@"郑亮" aStudent:@"王静"];
        

    }
    return 0;
}
