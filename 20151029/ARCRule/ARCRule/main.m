//
//  main.m
//  ARCRule
//
//  Created by qingyun on 15/10/29.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#define wayFile  @"/Users/qingyun/Desktop/风筝/code/objective - c/20151026/hello.txt"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Person *person = [[Person alloc] initWithPerson:@"xiangxiang" andAge:18];
        NSLog(@"person's name is %@, age is %d",[person name], [person age]);
        
        NSString *str = [[NSString alloc] initWithContentsOfFile:wayFile encoding:NSUTF8StringEncoding error:nil];
                         NSLog(@"str >>>>>>>> %@",str);
    }
    return 0;
}
