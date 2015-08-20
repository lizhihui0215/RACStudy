//
//  BaseViewController.h
//  RACDemo
//
//  Created by 李智慧 on 8/20/15.
//  Copyright © 2015 lizhihui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RACExpection.h"
@interface BaseViewController : UIViewController
@property (nonatomic, strong, readonly) RACExpection *exceptionHandler;
@end
