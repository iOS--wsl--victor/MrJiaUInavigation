//
//  BasePublicTool.m
//  rainbowOnlineMall
//
//  Created by Mr_ Jia on 15/5/26.
//  Copyright (c) 2015年 Mr_ Jia. All rights reserved.
//

#import "BasePublicTool.h"

@interface BasePublicTool ()

@end

@implementation BasePublicTool
+ (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font{
    return [self sizeWithText:text font:font maxW:MAXFLOAT];
}
+ (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxW:(CGFloat)maxW{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    CGSize maxSize = CGSizeMake(maxW, MAXFLOAT);
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}
@end
