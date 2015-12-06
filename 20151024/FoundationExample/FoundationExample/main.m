//
//  main.m
//  FoundationExample
//
//  Created by qingyun on 15/10/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //1创建字符串
    NSString *str = @"qingyun";
    //格式化方式
    NSString *str1 = [NSString stringWithFormat:@"我是：%@ 年纪：%d ", @"popei",30];
    //从文件中读取
    NSString *str2 = [NSString stringWithContentsOfFile:@"/Users/qingyun/Desktop/hello.txt" encoding:NSUTF8StringEncoding error:NULL];
    //把c的字符变成oc字符串对象
    NSString *str3 = [NSString stringWithCString:"jingling" encoding:NSUTF8StringEncoding];
    NSLog(@"str >>>>>> %@,str1 >>>> %@, str2 >>>> %@, str3 >>>>>> %@",str, str1, str2, str3);
    
    //字符串的长度
    NSLog(@"str2 >>>>>> %ld",[str2 length]);
    
    //字符串的比较
    NSString *str5 = @"4105271993xxxxxx20";
    NSLog( @"str5 >>>>>> %@",str5);
    NSString *str6 = @"410527";
    NSLog( @"str5 >>>>>> %@",str5);
    
    NSLog(@"..................%ld",[str5 compare:str6 options:NSNumericSearch]);
    NSLog( @">>>>>>>>>> %ld",[str5 compare:str6 options:NSNumericSearch range:NSMakeRange(0, 4)]);
    
    if ([str5 isEqualToString:str6]) {
        NSLog(@"相同");
    }
    else{
        NSLog(@"不同");
    }
    
    //字符串比较
    if ([@"410527xxxxxxx20" hasPrefix:@"410"]) {
        NSLog(@"河南人");
    }
    if ([@"tupian.png" hasSuffix:@"png"]) {
        NSLog(@"是图片");
    }
    if ([@"410xxxxxx20" containsString:@"xxxxxx"]) {
        NSLog(@"包含xxxx");
    }
    
    //字符串包含在那个位置
    NSLog(@"rang >>>>>> %@",NSStringFromRange([@"asdfghjk1234qwedfghj" rangeOfString:@"1234"]));
    
    //字符串连接
    NSString *str7 = @"我是：";
    NSString *str8 = @"fengzheng";
    NSLog(@"SSS >>>>>>>> %@",[str7 stringByAppendingString:str8]);
    NSLog(@"sdfghj >>>>>>>>>> %@",[@"/Users/qingyun/Desktop" stringByAppendingPathComponent:@"hello.txt"]);
    
    //提取子字符串
    NSLog(@"birth >>>>>>>> %@",[@"410x1027" substringWithRange:NSMakeRange(4, 4)]);
    
    //可变字符串的用法
    NSMutableString *str11 = [NSMutableString stringWithFormat:@"我是：fengzheng"];
    NSLog(@"%p, %p",str11,@"我是：fengzheng");
    
    //追加
    [str11 appendString:@"jingnign"];
    NSLog(@"str11 >>>>>>> %@",str11);
    [str11 appendFormat:@"134%@",@"000"];
    NSLog(@"str11 >>>>>>> %@",str11);
    
    //删除
    [str11 deleteCharactersInRange:NSMakeRange(3,4)];
     NSLog(@"str11 >>>>>>> %@",str11);
    
    //插入
    [str11 insertString:@"xxxxxxx" atIndex:4];
    NSLog(@"str11 >>>>>>> %@",str11);
    
    //替换
    [str11 replaceCharactersInRange:NSMakeRange(2, 4) withString:@"rrrrrrrr"];
    NSLog(@"str11 >>>>>>> %@",str11);
    NSLog(@"str11 >>>>>> %ld",[str11 length]);
    NSLog(@"str11 >>>>>>> %p",str11);
    
    //setstring(替换全部内容)
    [str11 setString:@"wdefrgthjyu"];
    NSLog(@"str11 >>>>>>> %@",str11);
    NSLog(@"str11 >>>>>>> %p",str11);
    
    return 0;
}
