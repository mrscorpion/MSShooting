//
//  ViewController.m
//  MSShooting
//
//  Created by mr.scorpion on 16/4/15.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "ViewController.h"
#import "LocMakerViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *playLocButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor brownColor];
    
    self.playLocButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [self.view addSubview:self.playLocButton];
    self.playLocButton.frame = CGRectMake(100, 100, 100, 100);
    [self.playLocButton addTarget:self action:@selector(maker) forControlEvents:UIControlEventTouchUpInside];
}

- (void)maker
{
    LocMakerViewController *locVC = [[LocMakerViewController alloc] init];
    [self.navigationController pushViewController:locVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
