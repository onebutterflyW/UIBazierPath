//
//  ViewController.m
//  UIBazierPath
//
//  Created by 软件工程系01 on 16/8/4.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "ViewController.h"
#import "TriangleVC.h"
#import "CALayerVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    
    UIButton *button1=[[UIButton alloc]initWithFrame:CGRectMake(20, 80, 200, 40)];
    button1.backgroundColor=[UIColor lightGrayColor];
    [button1 setTitle:@"UIBezierPath画图" forState:UIControlStateNormal];
    button1.tintColor=[UIColor blackColor];
    [self.view addSubview:button1];
    
    [button1 addTarget:self action:@selector(triangle) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UIButton *button2=[[UIButton alloc]initWithFrame:CGRectMake(20, 130, 200, 40)];
    button2.backgroundColor=[UIColor lightGrayColor];
    [button2 setTitle:@"CALayer" forState:UIControlStateNormal];
    button2.tintColor=[UIColor blackColor];
    [self.view addSubview:button2];
    
    [button2 addTarget:self action:@selector(jampCalayer) forControlEvents:UIControlEventTouchUpInside];
    
    
}


-(void)triangle{

    TriangleVC *triangleView=[[TriangleVC alloc]init];
    [self.navigationController pushViewController:triangleView animated:NO];

}


-(void)jampCalayer{

    CALayerVC *ca=[[CALayerVC alloc]init];
    [self.navigationController pushViewController:ca animated:NO];

}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
