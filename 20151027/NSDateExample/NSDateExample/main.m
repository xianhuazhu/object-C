//
//  main.m
//  NSDateExample
//
//  Created by qingyun on 15/10/27.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    //NSDate
    NSDate *now = [NSDate date];
    NSLog( @"now >>>>>>>> %@",now);
    
    //时间差
    NSTimeInterval interval = 60*60*24;
    //通过时间差得到另外一个时间
    NSDate *tomorrow = [now dateByAddingTimeInterval:interval];
    NSDate *yesterday = [now dateByAddingTimeInterval:-interval];
    
    NSLog( @"tomorrow >>>>>>>> %@",tomorrow);
    NSLog( @"yesterday >>>>>>> %@",yesterday);
    
    NSDate *someday = [NSDate dateWithTimeInterval:interval sinceDate:yesterday];
    NSLog(@"someday >>>>>>>> %@",someday);
    
    //求时间差
    NSTimeInterval result = [now timeIntervalSinceDate:yesterday];
    NSLog(@"result >>>>>>> %.2lf",result);
    
    //日期比较
    if ([tomorrow isEqualToDate:someday]) {
        NSLog( @"明天");
    }
    
    NSDate *early = [tomorrow earlierDate:now];
    NSDate *later = [tomorrow earlierDate:now];
    NSLog(@"early >>>>>>>> %@",early);
    NSLog(@"later >>>>>>>> %@",later);
    
    //时区
    NSArray *zones = [NSTimeZone knownTimeZoneNames];
    for (NSString *zone in zones) {
        NSLog(@"zone >>>>>>> %@",zone);
    }
    
    NSTimeZone *local = [NSTimeZone defaultTimeZone];
    NSLog(@"local >>>>>>> %@",local);
    
    NSTimeZone *system = [NSTimeZone systemTimeZone];
    NSLog(@"system >>>>>>>> %@",system);

    //时间的格式化
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateStyle:NSDateFormatterFullStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    
    [formatter setTimeZone:local];
    NSLog(@"now >>>> %@",[formatter stringFromDate:now]);
    
    //随意格式的时间
    [formatter setDateFormat:@"yyyy/yy/yy HH-mm-ss"];
 
    NSLog(@"now >>>>>>> %@",[formatter stringFromDate:now]);
    [formatter setDateFormat:@"公元前/后：‘G’"];
    NSLog(@"now >>>>>>> %@",[formatter stringFromDate:now]);
    
    NSString *dateStr1 = @"2015-10-27 11:08:10";
    [formatter setDateFormat:@"yyyy/yy/yy hh-hh-hh"];
    NSDate *date1 = [formatter dateFromString:dateStr1];
    NSLog(@"dateStr1 >>>>>> %@",dateStr1);
    NSLog(@"date1 >>>>>> %@",date1);
    
    return 0;
}
