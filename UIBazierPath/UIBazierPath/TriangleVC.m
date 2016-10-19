//
//  TriangleVC.m
//  UIBazierPath
//
//  Created by 软件工程系01 on 16/8/4.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "TriangleVC.h"
#import "UIBezierPathTest.h"
@interface TriangleVC ()

@end

@implementation TriangleVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    UIBezierPathTest *bezierPathView = [[UIBezierPathTest alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, height - 140 - 64)];
    bezierPathView.backgroundColor=[UIColor greenColor];
    bezierPathView.layer.borderColor=[UIColor redColor].CGColor;
    bezierPathView.layer.borderWidth=5;
    
    
    [self.view addSubview:bezierPathView];
    
    bezierPathView.type=kYuan;
    
    
}



-(void)drawTriangle{

    
    UIBezierPath  *path=[[UIBezierPath alloc]init];
    
    path.lineWidth=1.5;
    
    
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height-20)];
    [path stroke];
    
    
    


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
