//
//  MeView.m
//  MTIncidentResponse
//
//  Created by 桐 on 2020/3/28.
//  Copyright © 2020 com.mt. All rights reserved.
//

#import "MeView.h"

@implementation MeView

- (void)addViews {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.backgroundColor = [UIColor greenColor];
    [self addSubview:view];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(CGRectGetMaxX(view.frame)/2 - 25, CGRectGetMaxY(view.frame)/2 - 25, 50, 50);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:btn];
}

- (void)addViewsConstraints {
    
}

- (void)clickAction {
    [self safePerformAction:@"viewModel_MeView_clickAction:" withObject:self];
}

@end
