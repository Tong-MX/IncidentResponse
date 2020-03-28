//
//  RuntimeStatus.h
//  MTIncidentResponse
//
//  Created by 桐 on 2020/3/28.
//  Copyright © 2020 com.mt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define kRuntimeInstance  [RuntimeStatus sharedInstance]

@interface RuntimeStatus : NSObject

@property (nonatomic, readonly, class) RuntimeStatus *sharedInstance;
@property (nonatomic, weak) UIViewController * curentViewController;

@end

NS_ASSUME_NONNULL_END
