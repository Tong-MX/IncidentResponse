//
//  BaseViewController.m
//  MTIncidentResponse
//
//  Created by 桐 on 2020/3/28.
//  Copyright © 2020 com.mt. All rights reserved.
//

#import "BaseViewController.h"
#import "RuntimeStatus.h"

@interface BaseViewController ()

@end

@implementation BaseViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //添加要响应控制器
    kRuntimeInstance.curentViewController = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
