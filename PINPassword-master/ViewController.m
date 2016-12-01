//
//  ViewController.m
//  PINPassword-master
//
//  Created by 黄海燕 on 16/11/30.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ViewController.h"
#import "PINPasswordView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    CGPoint center = self.view.center;
    PINPasswordView *view = [[PINPasswordView alloc]initWithFrame:CGRectMake(0, 0, 288, 44)];
    view.elementCount = 5;
    view.center = CGPointMake(center.x, 200);
    view.elementBorderColor = [UIColor grayColor];
    view.elementMargin = 5;
    [self.view addSubview:view];
    view.passwordDidChangeBlock = ^(NSString *password){
        NSLog(@"password:%@",password);
        //发送请求
    };
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
