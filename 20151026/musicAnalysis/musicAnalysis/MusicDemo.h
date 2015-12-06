//
//  MusicDemo.h
//  musicAnalysis
//
//  Created by qingyun on 15/10/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MusicDemo : NSObject

{
    NSMutableArray *_lyric;
    NSTimeInterval _timeCount;//计数
}

- (void)lyricWithFilePath:(NSString *)path;

- (void)song:(NSTimer *)timer;



@end
