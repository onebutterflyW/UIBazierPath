//
//  UIBezierPathTest.h
//  UIBazierPath
//
//  Created by 软件工程系01 on 16/8/4.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef  NS_ENUM(NSUInteger,kBezierPathType){

    kSanjiaoType=1,
    kJuxing=2,
    kHu=3,
    kYuan=4,
    kTuoyuan=5,
    kBolang=6

};

@interface UIBezierPathTest : UIView

@property(nonatomic,assign)kBezierPathType type;

@end
