//
//  MallTabBar.h
//  rainbowOnlineMall
//
//  Created by Mr_ Jia on 15/5/26.
//  Copyright (c) 2015年 Mr_ Jia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MallTabBar;

@protocol MallTabBarDelegate <UITabBarDelegate>
@optional
- (void)tabBarDidClickPlusButton:(MallTabBar *)tabBar;
@end

@interface MallTabBar : UITabBar
@property (nonatomic, weak) id<MallTabBarDelegate> delegate;
@end

