//
//  ViewController.m
//  TestForLabel
//
//  Created by dvt04 on 2018/2/7.
//  Copyright © 2018年 dvt04. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+VerticalAlign.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupWidgets];
}

- (void)setupWidgets
{
    self.nameLabel.text = @"学习贯彻党的十九大精神专题报道";
    self.name1Label.text = @"十九大专题报道";
    
    [self.name1Label alignBottom];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
