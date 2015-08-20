//
//  LoginViewController.m
//  RACDemo
//
//  Created by 李智慧 on 8/19/15.
//  Copyright © 2015 lizhihui. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginViewModel.h"
@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSError *error = nil;
    [self.exceptionHandler handleExceptionWithError:error];
    
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
