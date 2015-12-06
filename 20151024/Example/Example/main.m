//
//  main.m
//  Example
//
//  Created by qingyun on 15/10/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //创建字符串对象
        NSString *str = @"dfsfg";
        //格式化方式
        NSString *str1 = [NSString stringWithFormat:@"姓名：%@，年龄：%d",@"peipei",30];
        //从文件中读取
        NSString *str2 =[NSString stringWithContentsOfFile:@"/Users/qingyun/Desktop/hello.txt" encoding:NSUTF8StringEncoding error:NULL];

        
        //1 创建数组对象
        NSArray *arr = [NSArray arrayWithObjects:@"one", @"two",@"1",nil];
        // 打印数组格式
        NSLog(@"arr >>>>>>\n%@",arr);
        //oc中的数组只能存对象
        
        NSArray *arr2 = @[@"zhihao", [NSObject new], @"1234"];
        NSLog(@"arr2 >>>>> \n%@",arr2);
        
        //访问数组的元素
        for (int i = 0; i < [arr count]; i++) {
            NSLog(@"arr[%d]=%@,%@", i, arr[i], [arr objectAtIndex:i]);
        }
        
        //是否包含某个对象
        if ([arr2 containsObject:@"1234"]) {
            NSLog(@"包含");
        }
        
        //遍历数组
        for (id obj in arr2) {
            NSLog(@"obj >>>>>> %@",obj);
        }
      
        //枚举器
       NSEnumerator *enumerator = [arr2 objectEnumerator];
        id bj = [enumerator nextObject];
        while (bj != nil) {
            NSLog(@"next >>>>>>> %@",bj);
            bj = [enumerator nextObject];
        }

        //链接
        NSArray *arr3 = @[@"zhangfeng", @"qingyun",@"wangmeng", @"jingling"];
        NSArray *arr4 = @[@"qingfeng", @"dengjing", @"angying", @"zixun"];
        
        NSArray *join = [arr3 arrayByAddingObjectsFromArray:arr4];
        NSLog( @"join >>>>>> %@",join);
        
        //字符串
        NSString *names = @"kan,yun,juan,yun,shu";
        NSArray *nameArr = [names componentsSeparatedByString:@","];
        NSLog(@"names >>>>>> %@",nameArr);
        
        NSString *names1 = [nameArr componentsJoinedByString:@"-"];
        NSLog(@"names1 >>>>>>> %@",names1);
        
        //可变数组
        //NSMutableArray 是NSArray的子类，其中的元素可以更换或其他的变动操作
        NSMutableArray *mtarr = [NSMutableArray arrayWithCapacity:10];
        mtarr[0] = @"qingfeng";
        NSLog(@"mtarr >>>>> %@",mtarr);
        NSLog(@"mtarr >>>>> %p",mtarr);
        
        mtarr[0] = @"jingning";
        NSLog(@"mtarr >>>>>> %@",mtarr);
        NSLog(@"mtarr >>>>> %p",mtarr);
        
        //追加
        [mtarr addObject:@"1234"];
        NSLog(@"mtarr >>>>>> %@",mtarr);
        [mtarr addObjectsFromArray:arr];
        NSLog(@"mtarr >>>>>> %@",mtarr);
        
        //删除
        [mtarr removeObject:@"1234"];
        NSLog(@"mtarr >>>>>> %@",mtarr);
        [mtarr removeObjectAtIndex:0];
        NSLog(@"mtarr >>>>>> %@",mtarr);
        
        //插入
        [mtarr insertObject:@"rongrong" atIndex:0];
        NSLog(@"mtarr >>>>>> %@",mtarr);
        
        //替换
        [mtarr replaceObjectAtIndex:3 withObject:@"three"];
        NSLog(@"mtarr >>>>>> %@",mtarr);
        
        NSArray *arr6 = @[@"shang",@"tian",@"xia",@"feng",@"jing"];
        [mtarr replaceObjectsInRange:(NSMakeRange(1, 2)) withObjectsFromArray:arr6];
        NSLog(@"mtarr >>>>>> %@",mtarr);
        
        //创建字典
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"xingming",@"fengzhneg", @"age",@"20", @"sex",@"girls", nil];
        NSDictionary *dict1 = @{@"xingming":@"kenken", @"age":@"15", @"sex":@"man"};
        
        //访问字典
        NSLog(@"dict >>>> %@",dict);
        NSLog(@"dict1 >>>>>>> %@",dict1);
        NSLog(@"dict >>>>>>>%@",dict[@"fengzhneg"]);
        NSLog(@"dict >>>>>>>%@",dict1[@"xingming"]);
        
        //遍历
        for (NSString *key in dict1) {
            //NSLog(@"%@:%@",key,dict[key]);
            NSLog(@"%@:%@",key,dict1[key]);
        }
        NSEnumerator *enumerator1 = [dict keyEnumerator];
        NSString *name;
        while ((name = [enumerator1 nextObject])) {
            NSLog(@"%@:%@",name,dict1[name]);
        }
        
        //allkey&allvalues
        NSArray *keys = [dict allKeys];
        NSArray *values = [dict allValues];
        NSLog(@"keys >>>>>>> %@",keys);
        NSLog(@"values >>>>>>> %@",values);
        
        //可变的字典
        NSMutableDictionary *mtdict = [NSMutableDictionary dictionaryWithDictionary:dict];
        Person *person = [Person new];
        [person setName:@"wanglin"];
        
        //更改键值内容
        //NSLog(@"mtdic >>>>> %@",mtdict);
        mtdict[@"20"] = person;
        NSLog(@"mtdic >>>>> %@",mtdict);
        mtdict[@"somebody"] = person;
        NSLog(@"mtdic >>>>> %@",mtdict);
        [mtdict setValue:@"shengqing" forKey:@"name"];
        NSLog(@"mtdic >>>>> %@",mtdict);
        
        [mtdict setValue:@"sex" forKey:@"girls"];
        NSLog(@"mtdic >>>>> %@",mtdict);
        
        //直接添加一个字典
        [mtdict addEntriesFromDictionary:@{@"class":@"1509", @"count":@"30"}];
        NSLog(@"mtdict >>>>>> %@",mtdict);
        
        //删除
        [mtdict removeObjectForKey:@"20"];
        NSLog(@"mtdict >>>>>> %@",mtdict);
        [mtdict removeObjectsForKeys:@[@"class",@"somebody"]];
        NSLog(@"mtdict >>>>>> %@",mtdict);
        
        [mtdict removeAllObjects];
        NSLog(@"mtdict >>>>>> %@",mtdict);
        
        
        
    }
    return 0;
}
