//
//  main.m
//  PropertExample
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYPerson.h"
#import "QYTeacher.h"
#import "QYStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYPerson *qpn1 = [[QYPerson alloc] initWithEatSomething:@"吃饭" andSleep:@"睡觉" BubbleSpinner:@"打豆豆"];
        NSLog(@"姓名：%@,性别：%@,年龄：%d,在%@,%@,%@",qpn1.name, qpn1.sex , qpn1.age, qpn1.something, qpn1.sleep , qpn1.bubbleSpinner);
        
        QYTeacher *ter = [[QYTeacher alloc] initWithDraw:@"佩佩" andYearsOfWorking:10 andStage:@"第二阶段"];
        NSLog(@"%@老师，有%d年授课经验,现在在讲%@",ter.name , ter.yearsOfWorking, ter.stage);
     
        QYStudent *st = [[QYStudent alloc] initWithTeacher:@"张老师" andStudent:@"某学生"];
        NSLog(@"班级有%@老师，和%@学生，该学生平时做的事情：%@，%@",ter.name, st.name, st.doHomeWork,st.takeLessons);
        
        
    }
    return 0;
}
