//
//  main.m
//  QYPerson
//
//  Created by qingyun on 15/11/8.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYPerson.h"
#import "QYStudent.h"
#import "QYTeacher.h"
#import "QYTrainingClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        QYPerson *someone = [QYPerson new];
        [someone setName:@"梅长苏"];
        [someone setAge:1000];
        [someone setIsMan:YES];
        
        NSLog(@"SOMEONE >>>>>> %@",someone);
        
        //继承老师和学生
        QYStudent*student = [QYStudent new];
        [student setName:@"小新"];
        [student setAge:5];
        [student setIsMan:YES];
        [student setSchool:@"幼稚园"];
        [student setGrade:1];
        
        NSLog(@"student >>>> %@",student);
        
        QYTeacher *teacher = [QYTeacher new];
        [teacher setName:@"qingyun"];
        [teacher setAge:30];
        [teacher setIsMan:YES];
        [teacher setStage:6];
        [teacher setEX:4];
        [teacher setSalary:100000];
        
        NSLog(@"teacher >>>>>> %@",teacher);
        
        //复合：培训班
        QYTrainingClass *tclass = [QYTrainingClass new];
        [tclass setMainTeacher:teacher];
        NSMutableArray *students = [NSMutableArray arrayWithCapacity:50];
        [students addObject:student];
        [tclass setStudents:students];
        
        //NSLog(@"students >>> %@",[tclass students]);
        
        
        QYStudent*student2 = [QYStudent new];
        [student2 setName:@"小明"];
        [student2 setAge:6];
        [student2 setIsMan:YES];
        [student2 setSchool:@"幼稚园"];
        [student2 setGrade:2];
        
        //获得数组，然后把students2加进去
        [[tclass students] addObject:student2];
        [tclass start];
        
    }
    return 0;
}
