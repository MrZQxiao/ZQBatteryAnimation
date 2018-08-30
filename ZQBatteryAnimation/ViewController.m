//
//  ViewController.m
//  ZQBatteryAnimation
//
//  Created by Yiche on 2018/8/30.
//  Copyright © 2018年 Yiche. All rights reserved.
//

#import "ViewController.h"
#import "ZQBatteryView.h"

@interface ViewController ()
{
    NSInteger _timeValue;
    ZQBatteryView *_animationView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self startAnimation];
    _animationView = [[ZQBatteryView alloc] initWithMaxNum:6 defaultColor:nil highlightColor:nil frame:CGRectMake(100, 100, 60, 200)];
    [self.view addSubview:_animationView];
    
}

- (void)startAnimation
{
    NSTimer *timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerMethod) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    [timer fire];
}


- (void)timerMethod
{
    if (_timeValue>6) {
        _timeValue =0;
    }
    _animationView.currentNum = _timeValue;
    _timeValue++;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
