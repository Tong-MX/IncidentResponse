//
//  BaseViewInitializer.h
//  MTIncidentResponse
//
//  Created by 桐 on 2020/3/28.
//  Copyright © 2020 com.mt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseViewProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewInitializer : NSObject

- (instancetype)initWithView:(id<BaseViewProtocol>)view;

- (void)safePerformAction:(NSString *)action params:(id)params;
@end

NS_ASSUME_NONNULL_END
