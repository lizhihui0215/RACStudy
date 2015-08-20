//
//  RACExpection.h
//  RACDemo
//
//  Created by 李智慧 on 8/20/15.
//  Copyright © 2015 lizhihui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseProtocol.h"
extern NSString * const RACExceptionTitleKey;
extern NSString * const RACExceptionMessageKey;

@interface RACExpection : NSObject
@property (nonatomic, weak) UIViewController<ExpetionHandle> *handler;

- (instancetype)initWithHandler:(UIViewController<ExpetionHandle> *)handler;

+ (instancetype)expectionWithHandler:(UIViewController<ExpetionHandle> *)handler;

- (void)handleExceptionWithError:(NSError *)error;


@end
