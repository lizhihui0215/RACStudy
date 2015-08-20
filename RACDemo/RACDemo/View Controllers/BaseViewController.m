//
//  BaseViewController.m
//  RACDemo
//
//  Created by 李智慧 on 8/20/15.
//  Copyright © 2015 lizhihui. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<ExpetionHandle,BaseProtocol>
@property (nonatomic, strong, readwrite) RACExpection *exceptionHandler;

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.exceptionHandler = [RACExpection expectionWithHandler:self];
}

- (void)test:(NSString *)aa{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
