//
//  MallTabBarController.m
//  rainbowOnlineMall
//
//  Created by Mr_ Jia on 15/5/26.
//  Copyright (c) 2015年 Mr_ Jia. All rights reserved.
//

#import "MallTabBarController.h"
#import "HomeViewController.h"
#import "ShoppingCartViewController.h"
#import "MyselfViewController.h"
#import "MallTabBar.h"

@interface MallTabBarController ()<MallTabBarDelegate>

@end

@implementation MallTabBarController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self addControllerView];
}

- (void)addControllerView{
    
    HomeViewController *homeViewController       = [[HomeViewController alloc]init];
    [self addChildVc:homeViewController
               title:@"首页"
               image:@"tabbar_home"
       selectedImage:@"tabbar_home_selected"];
    ShoppingCartViewController *shoppingCartViewController = [[ShoppingCartViewController alloc]init];
    [self addChildVc:shoppingCartViewController
               title:@"购物车"
               image:@"tabbar_message_center"
       selectedImage:@"tabbar_message_center_selected"];
    MyselfViewController *myselfViewController = [[MyselfViewController alloc]init];
    [self addChildVc:myselfViewController
               title:@"我的"
               image:@"tabbar_profile"
       selectedImage:@"tabbar_profile_selected"];
    
    MallTabBar *tabBar = [[MallTabBar alloc] init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
    
}

- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置子控制器的文字
    childVc.title = title; // 同时设置tabbar和navigationBar的文字
    
    // 设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = MallColor(123, 123, 123);
    NSMutableDictionary *selectTextAttrs      = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs
                                      forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs
                                      forState:UIControlStateSelected];
    childVc.view.backgroundColor = MallColor(235, 235, 241);
    
    // 先给外面传进来的小控制器 包装 一个导航控制器
    UINavigationController *nav  = [[UINavigationController alloc] initWithRootViewController:childVc];
    nav.navigationBarHidden      = YES;
    // 添加为子控制器
    [self addChildViewController:nav];
}

#pragma mark - HWTabBarDelegate代理方法
- (void)tabBarDidClickPlusButton:(MallTabBar *)tabBar
{
    UIViewController *vc    = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor redColor];
    [self presentViewController:vc
                       animated:YES
                     completion:nil];
}

@end
