//
//  main.m
//  musicAnalysis
//
//  Created by qingyun on 15/10/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MusicDemo.h"

#define fileWay @"/Users/qingyun/Desktop/风筝/code/objective - c/20151026/hello.txt"

int main(int argc, const char * argv[]) {
    
    MusicDemo *md = [MusicDemo new];
    [md lyricWithFilePath:fileWay];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:md selector:@selector(song:) userInfo:nil repeats:YES];
    
    [[NSRunLoop mainRunLoop] run];
    
    
    return 0;
}
