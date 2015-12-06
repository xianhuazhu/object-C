//
//  main.m
//  QYTqainingClass
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYTrainingClass.h"
#import "QYPerson.h"

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
        
        QYTrainingClass *tc = [QYTrainingClass new];
        [tc setClassName:@"1509班"];
        [tc setFloor:6];
        [tc drawFloorClassName];
        
    
        QYStudent *st1 = [QYStudent new];
        [st1 setName:@"婷"];
        [st1 setAge:20];
        [st1 setSex:@"美女"];
        [tc setStudents:st1 atIndex:0];

        QYStudent *st2 = [QYStudent new];
        [st2 setName:@"王"];
        [st2 setAge:20];
        [st2 setSex:@"帅哥"];
        [tc setStudents:st2 atIndex:1];
        
        QYStudent *st3 = [QYStudent new];
        [st3 setName:@"静"];
        [st3 setAge:20];
        [st3 setSex:@"美女"];
        [tc setStudents:st3 atIndex:2];

        QYStudent *st4 = [QYStudent new];
        [st4 setName:@"晴儿"];
        [st4 setAge:20];
        [st4 setSex:@"美女"];
        [tc setStudents:st4 atIndex:3];
        
        QYStudent *st5 = [QYStudent new];
        [st5 setName:@"峰"];
        [st5 setAge:25];
        [st5 setSex:@"帅哥"];
        [tc setStudents:st5 atIndex:4];
        
        QYStudent *st6 = [QYStudent new];
        [st5 setName:@"晴"];
        [st5 setAge:30];
        [st5 setSex:@"帅哥"];
        [tc setStudents:st6 atIndex:5];
        
        [tc start:6];

        
    }
    return 0;
}
