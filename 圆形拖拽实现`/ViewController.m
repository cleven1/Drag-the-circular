//
//  ViewController.m
//  圆形拖拽实现
//
//  Created by cleven on 16/12/10.
//  Copyright © 2016年 cleven. All rights reserved.
//

#import "ViewController.h"
#import "SmallView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //大圆
    UIView *roundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    roundView.layer.cornerRadius = 150;
    roundView.center = self.view.center;
    roundView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:roundView];
    
    SmallView *view = [[SmallView alloc] init];
    view.bounds = CGRectMake(0, 0, 50, 50);
    view.center = roundView.center;
    view.layer.cornerRadius = 25;
    [self.view addSubview:view];
}


@end
