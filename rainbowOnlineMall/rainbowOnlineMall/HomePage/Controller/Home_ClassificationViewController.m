//
//  Home_ClassificationViewController.m
//  rainbowOnlineMall
//
//  Created by Mr_ Jia on 15/5/26.
//  Copyright (c) 2015年 Mr_ Jia. All rights reserved.
//

#import "Home_ClassificationViewController.h"

@interface Home_ClassificationViewController ()<UISearchBarDelegate>
@property (strong,nonatomic) UISearchBar *ClassificationSearchBar;
@end

@implementation Home_ClassificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareUI];
    [self prepareData];
    [self prepareNotification];
}
- (void)prepareUI{
    [self base_createLeftNavigationBarButtonWithFrontImage:@"navigationbar_down"
                                      andSelectedImageName:nil
                                                  andTitle:nil
                                                   andSize:CGSizeMake(30, 30)];
    //创建导航搜索
    self.ClassificationSearchBar = [MallBaseViewController searchBarWithplaceholder:@"请输入关键字搜索.." tintColor:[UIColor redColor]];
    self.ClassificationSearchBar.delegate = self;
    [self.navigationItemTitlview addSubview:self.ClassificationSearchBar];
}
- (void)prepareNotification{
    
    
}

- (void)prepareData{
    
    
}


#pragma mark ---------搜索框代理事件---------
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [self searchBarAction];
}
- (void)searchBarAction{
    NSLog(@"当前seacrhbar内填写的内容是--%@--",self.ClassificationSearchBar.text);
}
#pragma mark ---------响应键盘事件---------
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.ClassificationSearchBar resignFirstResponder];
}
- (void)base_navigation_LeftBarButtonPressed{
    [self dismissViewControllerAnimated:YES completion:NULL];
}
#pragma mark ---------内存警告事件---------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
