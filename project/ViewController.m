//
//  ViewController.m
//  project
//
//  Created by 洋洋 on 16/8/12.
//  Copyright © 2016年 Jack_yy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadBasicSetting];
}
#pragma mark 加载默认设置
-(void)loadBasicSetting
{
    [self setupUI];
}

-(void)setupUI
{
    UIImageView *imgview = [[UIImageView alloc]init];
    CGFloat imgviewWidth = self.view.frame.size.width;
    CGFloat imgviewHeight = self.view.frame.size.height/2;
    imgview.frame = CGRectMake(0, 0, imgviewWidth, imgviewHeight);
    [imgview setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:imgview];
    CGFloat buttonX =imgview.center.x-45;
    CGFloat buttonY =CGRectGetMaxY(imgview.frame)+20;
    UIButton *button  = [[UIButton alloc]initWithFrame:CGRectMake(buttonX, buttonY, 100, 30)];
    [button setTitle:@"点击下载" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor yellowColor]];
    [button addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
-(void)btnAction:(UIButton *)button
{
    [button setBackgroundColor:[UIColor orangeColor]];
    [button setTitle:@"正在下载" forState:UIControlStateNormal];
    button.enabled =!button.enabled;
}
@end
