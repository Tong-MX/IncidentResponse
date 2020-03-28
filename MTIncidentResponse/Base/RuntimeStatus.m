//
//  RuntimeStatus.m
//  MTIncidentResponse
//
//  Created by 桐 on 2020/3/28.
//  Copyright © 2020 com.mt. All rights reserved.
//

#import "RuntimeStatus.h"

@implementation RuntimeStatus
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static id single = nil;
    dispatch_once(&onceToken, ^{
        single = [[self alloc] init];
    });
    return single;
}
@end
