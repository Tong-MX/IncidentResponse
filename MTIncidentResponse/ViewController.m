//
//  ViewController.m
//  MTIncidentResponse
//
//  Created by 桐 on 2020/3/28.
//  Copyright © 2020 com.mt. All rights reserved.
//

#import "ViewController.h"
#import "MeView.h"
#import "BaseViewProtocol.h"

@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MeView *view = [[MeView alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
    [self.view addSubview:view];
}

- (void)viewModel_MeView_clickAction:(MeView *)view {
    NSLog(@"返回点击事件");
}

@end
