//
//  QYTeacher.h
//  QYTqainingClass
//
//  Created by qingyun on 15/10/24.
//  Copyright © 2015年 Qingyun. All rights reserved.
//

#import "QYPerson.h"

@interface QYTeacher : QYPerson
{
    NSString *_stage;
    int _yearsOfWorking;
    float _salary;
}

- (void)setStage:(NSString *)stage;
- (NSString *)stage;

- (void)setYearsOfWorking:(int)yearsOfWorking;
- (int)yearsOfWorking;

- (void)setSalary:(float)salary;
- (float)salary;

- (void)draw;
@end
