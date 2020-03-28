//  BaseView.m
//  MTIncidentResponse
//
//  Created by 桐 on 2020/3/28.
//  Copyright © 2020 com.mt. All rights reserved.
//

#import "BaseView.h"
#import "BaseViewInitializer.h"

@interface BaseView () {
    BaseViewInitializer  * _initializer;
}
@end

@implementation BaseView

#pragma mark - LifeCycle

- (void)dealloc {
    NSLog(@"%@-释放了",self.class);
}

#pragma mark - Intial Methods

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addViews];
        [self addViewConstraints];
        _initializer = [[BaseViewInitializer alloc] initWithView:self];
    }
    
    return self;
}

- (void)addViews {
    
}

- (void)addViewConstraints {
    
}

- (void)updateData {

}

- (void)safePerformAction:(NSString *)action withObject:(id)object {
    [_initializer safePerformAction:action params:object];
}

- (void)safePerformAction:(NSString *)action {
    [self safePerformAction:action withObject:nil];
}



#pragma mark - Getter & Setter


@end
