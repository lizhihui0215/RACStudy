//
//  RACExpection.m
//  RACDemo
//
//  Created by 李智慧 on 8/20/15.
//  Copyright © 2015 lizhihui. All rights reserved.
//

#import "RACExpection.h"
NSString * const RACExceptionTitleKey = @"com.pccw.exception.title";
NSString * const RACExceptionMessageKey = @"com.pccw.exception.message";
static BOOL IsShowingAlert = NO;

@interface RACExpection()<UIAlertViewDelegate>

@end


@implementation RACExpection

- (instancetype)initWithHandler:(UIViewController<ExpetionHandle> *)handler {
    self = [super init];
    if (self) {
        self.handler = handler;
    }

    return self;
}

+ (instancetype)expectionWithHandler:(UIViewController<ExpetionHandle> *)handler {
    return [[self alloc] initWithHandler:handler];
}

- (void)handleExceptionWithError:(NSError *)error {
    if (IsShowingAlert || !error) return;
    IsShowingAlert = YES;
    NSString *title = error.userInfo[RACExceptionTitleKey];
    NSString *message = error.userInfo[@"message"];
    
    if ([UIAlertController class]){
        __weak typeof(self) weakself = self;
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                                 message:message
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:title
                                                         style:UIAlertActionStyleCancel
                                                       handler:^(UIAlertAction * __nonnull action) {
                                                           if([weakself.handler respondsToSelector:@selector(test:)]){
                                                               
                                                           }
                                                       }];
        
        [alertController addAction:action];
        [self.handler presentViewController:alertController
                                   animated:YES
                                 completion:^{
                                     IsShowingAlert = NO;
                                 }];
    }else{
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                            message:message
                                                           delegate:self
                                                  cancelButtonTitle:@"确定"
                                                  otherButtonTitles:nil];
        [alertView show];
    }
}

- (void)alertView:(nonnull UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if ([self.handler respondsToSelector:@selector(test:)]){
        
    }
    
    IsShowingAlert = NO;
}








@end
