//
//  BaseViewProtocol.h
//  MTIncidentResponse
//
//  Created by 桐 on 2020/3/28.
//  Copyright © 2020 com.mt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BaseViewProtocol <NSObject>

@optional

/// 创建视图
- (void)addViews;

/// 视图布局
- (void)addViewsConstraints;

/// 更新布局
- (void)updateViewsConstraints;


/// 安全d点击事件
/// @param action 控制器响应的事件
/// @param object 传入参数
- (void)safePerformAction:(NSString *)action withObject:(id)object;
- (void)safePerformAction:(NSString *)action;

@end

NS_ASSUME_NONNULL_END
