//
//  CALayerEX.m
//  UIBazierPath
//
//  Created by 软件工程系01 on 16/8/5.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "CALayerEX.h"
#define  WIDTH 50
@interface CALayerEX ()




@end

@implementation CALayerEX

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor clearColor];
    self.view.alpha=1;
    self.view.layer.backgroundColor=[UIColor clearColor].CGColor;
    self.view.layer.opaque=NO;
    [self drawMyLayer];
}

-(void)drawMyLayer{
    
    CGSize size=[UIScreen mainScreen].bounds.size;
    
    CALayer *layer=[CALayer layer];
    
    layer.backgroundColor=[UIColor colorWithRed:0 green:146 blue:1 alpha:1].CGColor;
    
    layer.position=CGPointMake(size.width/2, size.width/2);
    layer.bounds=CGRectMake(0, 0, WIDTH, WIDTH);
    layer.cornerRadius=WIDTH/2;
    
    layer.shadowColor=[UIColor lightGrayColor].CGColor;
    layer.shadowOffset=CGSizeMake(4, 4);
    layer.shadowRadius=10.0;
    layer.shadowOpacity=0.9;
    
    [self.view.layer addSublayer:layer];

}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{


    UITouch *touch=[touches anyObject];
    CALayer *layer=self.view.layer.sublayers[0];
    CGFloat width=layer.bounds.size.width;

    if (width==WIDTH) {
        
        width=WIDTH*4;
    }else{
        width=WIDTH;
    }
    
    layer.bounds=CGRectMake(0, 0, width, width);
    layer.position=[touch locationInView:self.view];
    layer.cornerRadius=width/2;



}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
