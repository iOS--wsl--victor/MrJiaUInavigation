//
//  UIBarButtonItem+Extension.h
//  Ms.Leadership
//
//  Created by Mr_ Jia on 15/5/25.
//  Copyright (c) 2015年 Mr_ Jia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;
@end
