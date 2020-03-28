//
//  BaseViewInitializer.m
//  MTIncidentResponse
//
//  Created by 桐 on 2020/3/28.
//  Copyright © 2020 com.mt. All rights reserved.
//

#import "BaseViewInitializer.h"
#import "RuntimeStatus.h"

@interface BaseViewInitializer ()

@property (nonatomic, weak) id<BaseViewProtocol> view;

@end
@implementation BaseViewInitializer

- (instancetype)initWithView:(id<BaseViewProtocol>)view {
    self = [super init];
    if (self) {
        self.view = view;
        if ([view respondsToSelector:@selector(addViews)]) {
            [view addViews];
        }
        if ([view respondsToSelector:@selector(addViewsConstraints)]) {
            [view addViewsConstraints];
        }
        
    }
    return self;
}

- (void)safePerformAction:(NSString *)action params:(id)params {
    SEL selector = NSSelectorFromString(action);
    if ([kRuntimeInstance.curentViewController respondsToSelector:selector]) {
        if (params) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [kRuntimeInstance.curentViewController performSelector:selector withObject:params];
#pragma clang diagnostic pop
        } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [kRuntimeInstance.curentViewController performSelector:selector];
#pragma clang diagnostic pop
        }
    }
}
@end
