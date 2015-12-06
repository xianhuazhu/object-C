//
//  main.m
//  ManagerSecretary
//
//  Created by qingyun on 15/11/3.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QYManager.h"
#import "QYSecretary.h"
#import "NSObject+Secretary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QYManager *manager = [[QYManager alloc] init];
        QYSecretary *secretary = [[QYSecretary alloc] init];
        
        manager.delegate = secretary;
        [manager startWork];
        [manager.delegate phoneCall:@"接通电话"];
        [manager.delegate bookTicket];
        
    }
    return 0;
}
