//
//  QYTeacher.h
//  PropertExample
//
//  Created by qingyun on 15/11/2.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "QYPerson.h"

@interface QYTeacher : QYPerson

@property NSString *stage;
@property int yearsOfWorking;
@property float salary;


- (instancetype)initWithDraw:(NSString *)name andYearsOfWorking:(int)yearsOfWorking andStage:(NSString *)stage;

@end
