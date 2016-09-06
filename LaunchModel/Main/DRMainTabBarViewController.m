//
//  DRMainTabBarViewController.m
//  LaunchModel
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "DRMainTabBarViewController.h"
#import "DRHomeViewController.h"
#import "DRNewsViewController.h"
#import "DRSocialsViewController.h"
#import "DRMineViewController.h"
#import "DRNavigationController.h"
#import "DRTabBarButton.h"

#define TabBarItemTitles @[@"首页",@"资讯",@"社团",@"我的"]

@interface DRMainTabBarViewController ()

@end

@implementation DRMainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建子视图控制器
    [self creatViewControllers];
    
    //自定义标签栏
    [self customTabBar];
}

#pragma mark - 创建子视图控制器
- (void)creatViewControllers {
    
    DRHomeViewController *homeVC = [[DRHomeViewController alloc] init];
    homeVC.title = @"首页";
    
    DRNewsViewController *newsVC = [[DRNewsViewController alloc] init];
    newsVC.title = @"资讯";
    
    DRSocialsViewController *socialsVC = [[DRSocialsViewController alloc] init];
    socialsVC.title = @"社团";
    
    DRMineViewController *mineVC = [[DRMineViewController alloc] init];
    mineVC.title = @"我的";
    
    
    NSArray *viewCtrls = @[homeVC,newsVC,socialsVC,mineVC];
    
    NSMutableArray *naviCtrls = [NSMutableArray arrayWithCapacity:viewCtrls.count];
    
    for (int i = 0; i < viewCtrls.count; i++) {
        //导航控制器
        DRNavigationController *naviCtrl = [[DRNavigationController alloc] initWithRootViewController:viewCtrls[i]];
        [naviCtrls addObject:naviCtrl];
    }
    
    self.viewControllers = naviCtrls;
}

#pragma mark - 自定义标签栏
-(void)customTabBar{
    //1.标签栏的背景
    self.tabBar.backgroundImage = [UIImage imageNamed:@"tabbar"];
    
    //2.tabbar按钮
    NSArray *tabBarItemTitles = TabBarItemTitles;
    NSArray *tabBarItemImages = @[
                                  @"tabbar_pic",
                                  @"tabbar_news",
                                  @"tabbar_social",
                                  @"tabbar_ar"
                                  ];
    float buttonWidth = kScreenWidth / tabBarItemTitles.count;
    
    for (int i=0; i<tabBarItemTitles.count; i++) {
        NSString *title = tabBarItemTitles[i];
        NSString *image = tabBarItemImages[i];
        NSString *selectedImage = [NSString stringWithFormat:@"%@_selected",tabBarItemImages[i]];
        
        //每个按钮的frame
        CGRect frame = CGRectMake(buttonWidth * i, 0, buttonWidth, kTabBarHeight);
        
        // 使用自定义的控件创建按钮
        DRTabBarButton *button = [DRTabBarButton buttonWithType:UIButtonTypeCustom];
        button.frame = frame;
        button.picTileRange = 2;
        button.type = buttonTypePicTop;
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button setTitle:title forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
        button.tag = 1000 + i;
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        if (i == 0) {
            button.selected = true;
            [button setTitleColor:UIColorFromRGB(0x0036ff) forState:UIControlStateSelected];
        }
        [self.tabBar addSubview:button];
    }
}
-(void)buttonAction:(UIButton *)sender{
    //切换界面
    self.selectedIndex = sender.tag - 1000;
    //按钮切换时,取消其他按钮的选中效果
    for (UIView *view in self.tabBar.subviews) {
        if ([view isKindOfClass:DRTabBarButton.class]) {
            DRTabBarButton *tabBarBtn = (DRTabBarButton *)view;
            if (sender.tag != tabBarBtn.tag) {
                tabBarBtn.selected = false;
                [tabBarBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            }else {
                tabBarBtn.selected = true;
                [tabBarBtn setTitleColor:UIColorFromRGB(0x0036ff) forState:UIControlStateSelected];
            }
        }
    }
}

//视图将要出现
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //视图将要出现的时候，移除tabbar上的按钮（系统的）
    [self removeTabBarButton];
}

#pragma mark - 移除按钮
-(void)removeTabBarButton{
    for (UIView *view in self.tabBar.subviews) {
        //取到所有的子视图
        //从字符串生成一个类名
        Class class = NSClassFromString(@"UITabBarButton");
        
        //找出UITabBarButton,移除掉
        if ([view isKindOfClass:class]) {
            [view removeFromSuperview];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
