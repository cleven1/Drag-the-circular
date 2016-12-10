
//
//  SmallView.m
//  圆形拖拽实现
//
//  Created by cleven on 16/12/10.
//  Copyright © 2016年 cleven. All rights reserved.
//

#import "SmallView.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation SmallView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
//        self.layer.cornerRadius = frame.size.width * 0.5;
//        self.layer.masksToBounds = YES;
        self.backgroundColor = [UIColor redColor];
        self.layer.borderColor = [UIColor blackColor].CGColor;
        self.layer.borderWidth = 2.0f;
    }
    return self;
    
}

/// 手指按住移动过程
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    /// 获得触摸在按钮的父视图中的坐标
    UITouch *touch = [touches anyObject];
    CGPoint currentPoint = [touch locationInView:self.superview];
    
    /// 移动按钮到当前触摸位置
    CGPoint newCenter = CGPointMake(currentPoint.x, currentPoint.y);
    //需要用来计算的圆心位置
    CGFloat ctX = newCenter.x - kScreenWidth * 0.5;
    CGFloat ctY = newCenter.y - kScreenHeight * 0.5;
    
    //判断逻辑
    if (ctX*ctX + ctY*ctY >= 125*125) {//125:大圆半径减小圆半径的距离
        CGFloat temX = ctX * 125 / sqrt(ctX*ctX + ctY*ctY);
        CGFloat temY = ctY * 125 / sqrt(ctX*ctX + ctY*ctY);
        newCenter = CGPointMake(temX + kScreenWidth * 0.5, temY + kScreenHeight * 0.5);
    }
    
    //更新center
    self.center = newCenter;
}

@end
