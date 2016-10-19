//
//  QQimageVC.m
//  UIBazierPath
//
//  Created by 软件工程系01 on 16/8/6.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "QQimageVC.h"
#define HIGHT 200
@interface QQimageVC ()

@end

@implementation QQimageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    //[self defineLayer];
    
    CALayer *layer=[[CALayer alloc]init];
    
    layer.bounds=CGRectMake(0, 0, HIGHT, HIGHT);
    layer.position=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    layer.backgroundColor=[UIColor redColor].CGColor;
    
    //cornerRadius必须和masksToBounds配合才有效果，但是使用masksToBounds没用阴影效果，如果想有阴影效果，需用俩图层表示
    layer.cornerRadius=100;
    layer.masksToBounds=YES;
    /*
     //设置阴影
     layer.shadowOffset=CGSizeMake(6, 6);
     layer.shadowColor=[UIColor blackColor].CGColor;
     layer.shadowOpacity=0.2;
     */
    
    layer.borderColor=[UIColor blackColor].CGColor;
    layer.borderWidth=2;
    
    
    layer.delegate=self;
    
    [self.view.layer addSublayer:layer];
    
    //很重要，不调用setNeedsDisplay不显示图片
    [layer setNeedsDisplay];

}




//-(void)defineLayer{

//    }


#pragma mark 代理方法
-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{

    NSLog(@"%@",layer);
    CGContextSaveGState(ctx);
    
    CGContextScaleCTM(ctx, 1, -1);
    CGContextTranslateCTM(ctx, 0, -HIGHT);
    
    
    UIImage *image=[UIImage imageNamed:@"touxiang.jpg"];
    
    CGContextDrawImage(ctx, CGRectMake(0, 0, HIGHT, HIGHT), image.CGImage);
    
    //    CGContextFillRect(ctx, CGRectMake(0, 0, 100, 100));
    //    CGContextDrawPath(ctx, kCGPathFillStroke);
    
    CGContextRestoreGState(ctx);


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
