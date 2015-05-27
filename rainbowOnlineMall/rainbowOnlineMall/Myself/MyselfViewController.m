//
//  MyselfViewController.m
//  rainbowOnlineMall
//
//  Created by Mr_ Jia on 15/5/26.
//  Copyright (c) 2015年 Mr_ Jia. All rights reserved.
//

#import "MyselfViewController.h"

@interface MyselfViewController ()

@end

@implementation MyselfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self prepareUI];
}
- (void)prepareNotification{
    
    
}

- (void)prepareData{
    
    
}

- (void)prepareUI{
    [self base_addNavigationItemTitleWithTitle:@"我的"];
    [self base_addLeftButtonItemWithImage:@"navigationbar_friendsearch"
                      imageForHighlighted:@"navigationbar_friendsearch_highlighted"];
    [self base_addRightButtonItemWithImage:@"navigationbar_pop"
                       imageForHighlighted:@"navigationbar_pop_highlighted"];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
