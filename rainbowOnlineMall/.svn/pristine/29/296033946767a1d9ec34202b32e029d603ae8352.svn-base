//
//  MallTabBar.m
//  Mall.Leadership
//
//  Created by Mr_ Jia on 15/5/26.
//  Copyright (c) 2015年 Mr_ Jia. All rights reserved.
//

#import "MallTabBar.h"

@interface MallTabBar()
@property (nonatomic, weak) UIButton *plusBtn;
@end

@implementation MallTabBar

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
//        [self AddPlus];
    }
    return self;
}

/**
 *
 */
- (void)AddPlus{
    // 添加一个按钮到tabbar中
    UIButton *plusBtn = [[UIButton alloc] init];
    [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"]
                       forState:UIControlStateNormal];
    [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"]
                       forState:UIControlStateHighlighted];
    [plusBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"]
             forState:UIControlStateNormal];
    [plusBtn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"]
             forState:UIControlStateHighlighted];
    plusBtn.size = plusBtn.currentBackgroundImage.size;
    [plusBtn addTarget:self
                action:@selector(plusClick)
      forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:plusBtn];
    self.plusBtn = plusBtn;
    
    
}
- (void)plusClick{
    // 通知代理
    if ([self.delegate respondsToSelector:@selector(tabBarDidClickPlusButton:)]) {
        [self.delegate tabBarDidClickPlusButton:self];
    }
}


- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat tabbarButtonW = self.width / 3;
    CGFloat tabbarButtonIndex = 0;
    for (UIView *child in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([child isKindOfClass:class]) {
            // 设置宽度
            child.width = tabbarButtonW;
            // 设置x
            child.x = tabbarButtonIndex * tabbarButtonW;

            tabbarButtonIndex++;
        }
    }
    /**
     *  // 1.设置按钮的位置
     self.plusBtn.centerX = self.width * 0.5;
     self.plusBtn.centerY = self.height * 0.5;
     
     // 2.设置其他tabbarButton的位置和尺寸
     CGFloat tabbarButtonW = self.width / 5;
     CGFloat tabbarButtonIndex = 0;
     for (UIView *child in self.subviews) {
     Class class = NSClassFromString(@"UITabBarButton");
     if ([child isKindOfClass:class]) {
     // 设置宽度
     child.width = tabbarButtonW;
     // 设置x
     child.x = tabbarButtonIndex * tabbarButtonW;
     
     // 增加索引
     tabbarButtonIndex++;
     if (tabbarButtonIndex == 2) {
     tabbarButtonIndex++;
     }
     }
     }

     */
}

@end

