//
//  CALayerVC.m
//  UIBazierPath
//
//  Created by 软件工程系01 on 16/8/4.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "CALayerVC.h"
#import "CALayerEX.h"
#import "QQimageVC.h"
@interface CALayerVC ()

@end

@implementation CALayerVC

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    [self layerBeijing];
    
   UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(10,self.view.frame.size.height-300, 100, 40)];
    [button setTitle:@"测试动画" forState:UIControlStateNormal];
    button.backgroundColor=[UIColor redColor];
    [button addTarget:self action:@selector(fangda) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    
    UIButton *button1=[[UIButton alloc]initWithFrame:CGRectMake(120,self.view.frame.size.height-300, 100, 40)];
    [button1 setTitle:@"仿QQ头像" forState:UIControlStateNormal];
    button1.backgroundColor=[UIColor redColor];
    [button1 addTarget:self action:@selector(layerImage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    

    
}

-(void)layerBeijing
{

    //设置CALayer,设置成透明黑色薄膜
    self.view.layer.backgroundColor=[[UIColor orangeColor] colorWithAlphaComponent:0.6].CGColor;
    self.view.layer.contents=(id)[UIImage imageNamed:@"d.jpg"].CGImage;
    self.view.layer.cornerRadius=20;
    self.view.layer.frame=CGRectInset(self.view.layer.frame, 20, 20);
    
    
    
    //添加子图层，添加子图层会覆盖lable，解决办法
    CALayer *subLayer=[CALayer layer];
    subLayer.frame=CGRectMake(30, 100, 300, 300);
    subLayer.backgroundColor=[UIColor clearColor].CGColor;
    [self.view.layer addSublayer:subLayer];
    
    //设置层的边框
    //subLayer.borderColor=[UIColor blueColor].CGColor;
    // subLayer.borderWidth=2.0;
    
    
    //设置shadow属性
    subLayer.shadowColor=[UIColor yellowColor].CGColor;
    subLayer.shadowOffset=CGSizeMake(10, 10);//阴影的偏移，x向右偏移4，y向下偏移4
    subLayer.shadowRadius=4;//阴影的半径
    subLayer.shadowOpacity=0.8;//阴影的透明度，透明度默认为0，如果不设置显示不出shadow
    
    
    //设置子图层的内容
    //subLayer.contents=(id)[UIImage imageNamed:@"jj.jpg"].CGImage;
    
    
    //通过两个层实现subLayer子图层圆角
    CALayer *imageLayer=[CALayer layer];
    imageLayer.contents=(id)[UIImage imageNamed:@"jj.jpg"].CGImage;
    imageLayer.frame=subLayer.bounds;
    imageLayer.cornerRadius=40.0;
    imageLayer.masksToBounds=YES;
    [subLayer addSublayer:imageLayer];
    

}

-(void)fangda{

    CALayerEX *cc=[[CALayerEX alloc]init];
    [self.navigationController pushViewController:cc animated:NO];


}


-(void)layerImage{
    
    QQimageVC *qqImage=[[QQimageVC alloc]init];
    [self.navigationController pushViewController:qqImage animated:NO];

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
