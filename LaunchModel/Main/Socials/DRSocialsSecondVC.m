//
//  DRSocialsSecondVC.m
//  LaunchModel
//
//  Created by ru dian on 16/10/25.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "DRSocialsSecondVC.h"
#import "DRMainTabBarViewController.h"
#import "DRHomeViewController.h"

@interface DRSocialsSecondVC ()

@property (nonatomic,strong)DRMainTabBarViewController *tabBarVC;

@end

@implementation DRSocialsSecondVC

//懒加载
- (DRMainTabBarViewController *)tabBarVC{
    if (!_tabBarVC) {
        _tabBarVC = (DRMainTabBarViewController *)self.tabBarController;
    }
    return _tabBarVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    //创建按钮
    [self createBtn];
}

- (void)createBtn{
    UIButton *myBtn = [self setUpButtonWithBgImg:nil superView:self.view action:@selector(btnAction:) title:@"跳回去"];
    myBtn.backgroundColor = [UIColor lightGrayColor];
    myBtn.frame     = CGRectMake(0,0,100,30);
    myBtn.center = self.view.center;
}

#pragma mark - 创建button
- (UIButton *)setUpButtonWithBgImg:(UIImage *)bgImg superView:(UIView *)superView action:(SEL)action title:(NSString *)title{
    UIButton *btn            = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.layer.cornerRadius   = 3;
    [btn setBackgroundImage:bgImg forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font      = [UIFont systemFontOfSize:17];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [superView addSubview:btn];
    return btn;
}

#pragma mark - 按钮的点击事件
- (void)btnAction:(UIButton *)sender{
    
    //DRMainTabBarViewController *vc = self.tabBarVC;
    //[self.navigationController popToViewController:self.tabBarVC.selectedIndex[0] animated:YES];
    //UIViewController *vc = self.tabBarVC.selectedIndex[0];
    //[self presentViewController:self.tabBarVC.selectedIndex[0] animated:YES completion:nil];
    self.tabBarVC.selectedIndex = 0;
}



//[self.navigationController popToViewController:vc.viewControllers[0] animated:YES];
//DRHomeViewController.h
//    UIViewController *firstVC = self.tabBarVC.selectedIndex == 0;
//    [self presentViewController:self.tabBarVC.viewControllers[0] animated:YES completion:nil];
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
