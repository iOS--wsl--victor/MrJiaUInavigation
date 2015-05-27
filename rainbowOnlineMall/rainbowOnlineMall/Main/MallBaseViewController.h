//
//  MallBaseViewController.h
//  rainbowOnlineMall
//
//  Created by Mr_ Jia on 15/5/26.
//  Copyright (c) 2015年 Mr_ Jia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JCRBlurView.h"

#define NavItemButtonWH           30
#define margin                    10
#define NavItemButtonY            28
#define navItemViewY              5

@interface MallBaseViewController : UIViewController
@property (nonatomic,strong) JCRBlurView *navigationView;
//@property (strong,nonatomic) UIView *navigationView;
@property (strong,nonatomic) UIView *navigationItemTitlview;
@property (strong,nonatomic) UIButton *LeftButton;
@property (strong,nonatomic) UIButton *RightButton;
/**
 *  添加标题 文本形式
 *
 *  @param titleString 标题文字
 */
- (void)base_addNavigationItemTitleWithTitle:(NSString *)titleString;
/**
 *  添加左右侧按钮
 *
 *  @param imageName      默认状态下按钮的图片
 *  @param HighlightImage 高亮状态下按钮的状态
 */
- (void)base_addLeftButtonItemWithImage:(NSString *)imageName imageForHighlighted:(NSString *)HighlightImage;
-(void)base_createLeftNavigationBarButtonWithFrontImage:(NSString *) frontImageName andSelectedImageName:(NSString *)selectedImageName andTitle:(NSString *)title;
- (void)base_createLeftNavigationBarButtonWithFrontImage:(NSString *) frontImageName andSelectedImageName:(NSString *)selectedImageName andTitle:(NSString *)title andSize:(CGSize)size;

- (void)base_addRightButtonItemWithImage:(NSString *)imageName imageForHighlighted:(NSString *)HighlightImage;
-(void)base_createRightNavigationBarButtonWithFrontImage:(NSString *) frontImageName andSelectedImageName:(NSString *)selectedImageName andTitle:(NSString *)title;
- (void)base_createRightNavigationBarButtonWithFrontImage:(NSString *) frontImageName andSelectedImageName:(NSString *)selectedImageName andTitle:(NSString *)title andSize:(CGSize)size;
//创建搜索按钮
+ (UISearchBar *)searchBarWithplaceholder:(NSString *)placeholder tintColor:(UIColor *)tintColor;

//子类中使用这两个方法响应左右itembutton
-(void)base_navigation_LeftBarButtonPressed;
-(void)base_navigation_RightBarButtonPressed;
@end
