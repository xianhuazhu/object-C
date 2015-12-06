//
//  MusicDemo.m
//  musicAnalysis
//
//  Created by qingyun on 15/10/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "MusicDemo.h"

@implementation MusicDemo

- (void)lyricWithFilePath:(NSString *)path
{
    //从文件中
    NSString *FileStr = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    NSLog(@"%@",FileStr);
    //把歌词用\n分割成数组
    NSArray *lyric = [FileStr componentsSeparatedByString:@"\n"];
    //歌词前的空格\t是一个字符
    NSLog(@"lyric >>> %@", lyric);
    //创建变量(空的数组)
    _lyric = [NSMutableArray array];
    
    //对数组逐步解析
    for (NSString *str in lyric) {
        //先分割成一个数组(时间和歌词分开)
        NSArray *strArr = [str componentsSeparatedByString:@"]"];
        //判断有]时才分割即]有的时候才进行下列操作
        if ([strArr count] > 1) {
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            
            NSString *time = strArr[0];
            //对时间进一步解析
            NSArray *strTime = [time componentsSeparatedByString:@":"];
            //substringFromIndex:4从第4个字符开始读取
            NSTimeInterval timeInterval = [strTime[1] floatValue] + [[strTime[0] substringFromIndex:4] floatValue]*60;
            //timeInterval需要是整形，进行封装
            dict[@"time"] = @(timeInterval);
            dict[@"lyric"] = strArr[1];
            //放到数组中
            [_lyric addObject:dict];
        }
    }
    NSLog(@"lyric >>> %@", _lyric);
    
    
}

- (void)song:(NSTimer *)timer
{
    _timeCount += 1;
    for (NSDictionary *dict in _lyric) {
        //因为大于某个数的小数也是大于此数，所以这个是错误的！！！
//        if([dict[@"time"] doubleValue] > _TimeCount)
//        {
//            NSLog(@"\t%@",dict[@"lyric"]);
//            [_lyric removeObject:dict[@"lyric"]];
//            break;
//        }
        
        //(int)[dict[@"time"] （int）只要是大于某数的小数都是此数
        if ((int)[dict[@"time"] floatValue] == (int)_timeCount) {
            NSLog(@"\t%@", dict[@"lyric"]);
            [_lyric removeObject:dict];
            break;
        }
    }
}

@end
