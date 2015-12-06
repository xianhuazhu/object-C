//
//  main.m
//  KVCPrictice
//
//  Created by qingyun on 15/11/5.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //plist文件实际是对xml文件的封装
//        
//        NSDictionary *info = @{
//                               @"name":@"qingyun",
//                               @"sex":@"男",
//                               @"age":@10
//                               };
//        //写到info.data文件中
//        [info writeToFile:@"/Users/qingyun/Desktop/info.data" atomically:YES];
//        NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:@"/Users/qingyun/Desktop/info.plist"];
//        NSLog(@"dict>>>> %@,%@,%@",dict[@"name"],dict[@"sex"],dict[@"age"]);
//
        //从文件中获取内容
        NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:@"/Users/qingyun/Desktop/风筝/code/objective - c/20151105/KVCPrictice/KVCPrictice/info.plist"];
        //第二种：字典独有方式，第三种：KVC方式，推荐第一种方式。
        NSLog(@"dict>>>> %@,%@,%@",dict[@"name"],[dict objectForKey:@"name"],[dict valueForKey:@"name"]);
        
        Person *xiangxiang = [[Person alloc] init];
        /*
        for (NSString *key in dict) {
          
            if ([key isEqualTo:@"name"]) {
                 xiangxiang.name = dict[key];
            }
            if ([key isEqualTo:@"sex"]) {
                xiangxiang.sex = dict[key];
            }
            if ([key isEqualTo:@"age"]) {
                xiangxiang.age = [dict[key] intValue];//对整型进行拆箱（字典中只能存放对象）
            }
        
            
            //KVC是通过字符串的方式来访问对象的状态，通过键名去访问对应的setter和getter方法，如果没有找到直接访问同名的成员变量
            //KVC可以自动装箱，拆箱数据
            [xiangxiang setValue:dict[key] forKey:key];
        }
        */
    
        //KVC是对成员变量的一种间接访问，所以性能和效率需要考量，不能滥用。
        //🔼🔼🔼
        NSLog(@"xiangxiang >>>> %@,%@,%d，%@",xiangxiang.name, [xiangxiang valueForKey:@"sex"], xiangxiang.age,[xiangxiang valueForKey:@"age"]);
        NSLog(@"xiangxiang'length >> %@",[xiangxiang valueForKeyPath:@"name.length"]);
        
        Person *chengcheng = [[Person alloc] init];
        chengcheng.name = @"程程";
        
       // chengcheng.ID = @"410000000";
        //KVC还能访问制度的属性和私有的属性，不过最终访问的还是成员变量
        [chengcheng setValue:@"410000000" forKey:@"ID"];
        NSLog(@"ID>>>>>>> %@",chengcheng.ID);
        
        [chengcheng setValue:@"1" forKey:@"salary"];
        NSLog(@"salary >>>>>>> %@",[chengcheng valueForKey:@"salary"]);
        
        [chengcheng setValue:@"1.70" forKey:@"height"];
        NSLog(@"height >>>>>> %@",[chengcheng valueForKey:@"height"]);
        
        xiangxiang.friend = chengcheng;
        [xiangxiang setValue:@"chengcheng" forKeyPath:@"friend.name"];
        
        //键路径是不限制长度的
        NSLog(@"name'length >> %@",[xiangxiang valueForKeyPath:@"friend.name.length"]);
        NSLog(@"chengcheng'name>>>>>> :%@",chengcheng.name);
        
        //批处理
        NSDictionary*info =
        [xiangxiang dictionaryWithValuesForKeys:@[@"name",@"age",@"friend"]];
        NSLog(@"info >>>>> %@",info);
        
        //灌入所有的属性
        [xiangxiang setValuesForKeysWithDictionary:dict];
         NSLog(@"dict>>>> %@,%d,%@,%@",xiangxiang.name, xiangxiang.age, xiangxiang.sex,
               [xiangxiang valueForKey:@"height"]);
    }
    return 0;
}
