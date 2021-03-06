//
//  UIView+HY.m
//  下拉刷新测试
//
//  Created by Mr_ Jia on 15/4/23.
//  Copyright (c) 2015年 Mr_ Jia. All rights reserved.
//

#import "UIView+HY.h"

@implementation UIView (HY)

- (void)setX:(CGFloat)x
{
    CGRect tempFrame   = self.frame;
    tempFrame.origin.x = x;
    self.frame         = tempFrame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
    CGRect tempFrame   = self.frame;
    tempFrame.origin.y = y;
    self.frame         = tempFrame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect tempFrame     = self.frame;
    tempFrame.size.width = width;
    self.frame           = tempFrame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect tempFrame      = self.frame;
    tempFrame.size.height = height;
    self.frame            = tempFrame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x       = centerX;
    self.center    = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y       = centerY;
    self.center    = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setSize:(CGSize)size
{
    CGRect tempFrame      = self.frame;
    tempFrame.size.height = size.height;
    tempFrame.size.width  = size.width;
    self.frame            = tempFrame;
    
}

- (CGSize)size
{
    return self.frame.size;
}



@end
