//
//  main.m
//  NSPredictateDemo
//
//  Created by qingyun on 15/11/6.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *arr = @[
                               @{
                               @"name":@"zhangxi",
                               @"salary":@20000,
                               @"months":@[@{@"money":@100},@{@"money":@900}]
                               },
                               @{
                                   @"name":@"changfen",
                                   @"salary":@17000,
                                   @"months":@[@{@"money":@10200},@{@"money":@90010}]
                                   },
                               @{
                                   @"name":@"zhangling",
                                   @"salary":@25000,
                                   @"months":@[@{@"money":@10000},@{@"money":@90000}]
                                   },
                               @{
                                   @"name":@"xiangqing",
                                   @"salary":@20500,
                                   @"months":@[@{@"money":@1002},@{@"money":@9010}]
                                   },
                               @{
                                   @"name":@"qingyun",
                                   @"salary":@20550,
                                   @"months":@[@{@"money":@1000},@{@"money":@9000}]
                                   }];
        //1.关系运算符在谓词中的使用
        //> < >= <= != ==
        NSPredicate *pred1 = [NSPredicate predicateWithFormat:@"salary >= 2000"];
        NSLog(@">10000 >>>>>> %@",[arr filteredArrayUsingPredicate:pred1]);
        
        //2.逻辑运算符
        //AND(&&) OR(||)
        NSPredicate *pred2 = [NSPredicate predicateWithFormat:@"salary > 10000 AND salary < 30000"];
        NSLog(@"result >>>> %@",[arr filteredArrayUsingPredicate:pred2]);
        
        //3.向谓词发消息
        //ALL（所有的元素都要满足条件）ANY （其中任意一个）
        NSPredicate *pred3 = [NSPredicate predicateWithFormat:@"ANY salary > 10000 AND ALL salary < 50000"];
        NSLog(@"result >>>> %hhd",[pred3 evaluateWithObject:arr]);
        
        //4. 范围查找
        //IN(在指定几个结果中匹配) BETWEEN (在指定的起始范围内查找)
        NSPredicate *pred4 = [NSPredicate predicateWithFormat:@"salary IN {1000, 30000}"];
        NSLog(@"result >>>>>> %@",[arr filteredArrayUsingPredicate:pred4]);
        
        NSPredicate *pred5 = [NSPredicate predicateWithFormat:@"salary BETWEEN {10000, 30000}"];
        NSLog(@"result >>>>>> %@",[arr filteredArrayUsingPredicate:pred5]);
        
        //5. 用谓词对字符串进行操作
        //BEGINSWITH ENDSWITH CONTAINS LIKE
        // [cd]   LIKE 后边加 c 不区分大小写， d 不区分中英符号和音调符号
        NSPredicate *pred6 = [NSPredicate predicateWithFormat:@"name BEGINSWITH [cd] 'zh' "];
        NSLog(@"result >>>>>> %@",[arr filteredArrayUsingPredicate:pred6]);
        
        //*代表任意字符 ？任意一个字符
        NSPredicate *pred7 = [NSPredicate predicateWithFormat:@"name LIKE '*zh*' "];
        NSLog( @"result >>>>>>> %@",[arr filteredArrayUsingPredicate:pred7]);
        
        //6. 谓词模板
        //格式化谓词：键用%K（大写K）格式化，值用对象的格式化
        NSString *key = @"salary";
        NSNumber *value = @10000;
        NSPredicate *pred8 = [NSPredicate predicateWithFormat:@"ANY %K > %@ AND ALL salary < %@",key ,value, @50000];
        NSLog(@"result >>>> %hhd",[pred8 evaluateWithObject:arr]);
        
        //🔼🔼🔼①
        //predTheme不是一个有效的谓词对象，只是一个模板，pred9才是由谓词模板创建的谓词对象
//        NSPredicate *predTheme = [NSPredicate predicateWithFormat:@"salary > $salaryB AND months.@sum.money < $salaryE"];
//        NSPredicate *pred9 = [predTheme predicateWithSubstitutionVariables:@{@"salaryB":@1000, @"salaryE":@200000}];//相对应的值分别传给上边的 $salary和$salarySUM
//        NSLog(@"result >>>>> %@",[arr filteredArrayUsingPredicate:pred9]);
//
        //②
        NSPredicate *predTheme = [NSPredicate predicateWithFormat:@"salary > $salaryB AND months.@sum.money < $salaryE AND name LIKE [cd] $name"];
        NSPredicate *pred9 = [predTheme predicateWithSubstitutionVariables:@{@"salaryB":@1000, @"salaryE":@200000, @"name":@"0*"}];//相对应的值分别传给上边的 $salary和$salarySUM,@"name":@" '0*' "和 '$name' 此时 ' ' 都会被当做匹配的内容，所以不用写
        NSLog(@"result >>>>> %@",[arr filteredArrayUsingPredicate:pred9]);
        
        //7. 正则表达式
        NSString *expression = @"[A-Za-z0-9~_%]+@[A-Za-z0-9]+\\.[a-z]{2,4}";
        //NSString *expression = @"w+([-+.]w+)*@w+([-.]w+)*.w+([-.]w+)*";
        NSPredicate *pred10 = [NSPredicate predicateWithFormat:@"SELF MATCHES  %@", expression];
  
        if ([pred10 evaluateWithObject:@"wde_@123.xcom"]) {
            NSLog(@"是邮箱");
        }
        
        NSString *tests =
        @"defrdfdgh, defgrthy@163.com, mjgbnk,njikjnk@111.com, ndjbefbuejv, ndjsefyusgfb@555.com";
        NSRange range = [tests rangeOfString:expression options:NSRegularExpressionSearch];
        NSLog( @"range >>> %@",NSStringFromRange(range));
    }
    return 0;
}
