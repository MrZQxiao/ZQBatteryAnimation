//
//  ZQBatteryAnimation.h
//  ZQBatteryAnimation
//
//  Created by Yiche on 2018/8/30.
//  Copyright © 2018年 Yiche. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZQBatteryView : UIView

@property(nonatomic,assign) NSInteger currentNum;

- (instancetype)initWithMaxNum:(NSInteger)maxNum defaultColor:(UIColor *)defaultColor highlightColor:(UIColor *)highlightColor frame:(CGRect)frame;

@end
