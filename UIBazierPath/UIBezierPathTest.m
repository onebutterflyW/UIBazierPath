//
//  UIBezierPathTest.m
//  UIBazierPath
//
//  Created by 软件工程系01 on 16/8/4.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "UIBezierPathTest.h"

#define DegreesToRadians(degrees)  ((M_PI *degrees)/180)

@implementation UIBezierPathTest


- (void)drawRect:(CGRect)rect {
   
    switch (self.type) {
        case kSanjiaoType:
            [self drawTriangle];
            break;
        case kJuxing:
            [self drawJuxing];
            break;
        case kHu:
            [self drawHu];
            break;
        case kYuan:
            [self drawYuan];
            break;
        case kTuoyuan:
            [self drawTuoyuan];
            break;
        case kBolang:
            [self drawBolang];
            break;
            
        default:
            break;
    }
}


-(void)drawTriangle{

    
    UIBezierPath *path=[[UIBezierPath alloc]init];
    
    //画三角形
    [path moveToPoint:CGPointMake(20, 100)];
    [path addLineToPoint:CGPointMake(self.frame.size.width-20, 100)];
    [path addLineToPoint:CGPointMake(self.frame.size.width/2, self.frame.size.height-200)];
    [path closePath];
    
   
    
    //设置三角形的填充色
    UIColor *fillColor=[UIColor orangeColor];
    [fillColor set];
    [path fill];
    
    //设置画笔
    path.lineWidth=1.5;
    UIColor *lineColor=[UIColor purpleColor];
    [lineColor set];
    
    [path stroke];
    
}




-(void)drawJuxing{

    UIBezierPath *path=[UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(self.frame.size.width-20, 20)];
    [path addLineToPoint:CGPointMake(self.frame.size.width-20, 120)];
    [path addLineToPoint:CGPointMake(20, 120)];
    
   
    
    //图形填充色
    [[UIColor lightGrayColor] set];
    [path fill];
    
    //画笔、颜色
    path.lineWidth=8;
     path.lineJoinStyle=kCGLineJoinRound;
    [[UIColor purpleColor] set];
    
    

    

}


-(void)drawHu
{

    CGPoint center=CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    UIBezierPath *path=[UIBezierPath bezierPathWithArcCenter:center radius:100 startAngle:0 endAngle:DegreesToRadians(135) clockwise:YES];
    
    
    path.lineWidth=1.5;
    [[UIColor redColor] set];
    [path stroke];
  
}


-(void)drawYuan{

   
    UIBezierPath *path=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, 100, 100)];
    
    [[UIColor lightGrayColor] set];
    [path fill];
    
    [[UIColor grayColor]set];
    
    
    [path stroke];


}



-(void)drawTuoyuan{

    UIBezierPath *path=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, 100, 200)];
    
    UIColor *color= [UIColor lightGrayColor];
    [color  set];
    [path fill];
    
    [[UIColor grayColor]set];
    
    
    [path stroke];

}

-(void)drawBolang{

    UIBezierPath *path=[UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(20, 100)];
    [path addCurveToPoint:CGPointMake(300, 100) controlPoint1:CGPointMake(150, 0) controlPoint2:CGPointMake(200,250)];
    
    
    [[UIColor redColor]set];
    path.lineWidth=5.0;
    path.lineCapStyle=kCGLineCapRound;
    path.lineJoinStyle=kCGLineJoinMiter;
    path.miterLimit=0.3;
    
    
    //根据各个点连线
    [path stroke];

}
@end
