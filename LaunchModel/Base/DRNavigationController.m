//
//  DRNavigationController.m
//  LaunchModel
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "DRNavigationController.h"

@interface DRNavigationController ()

@end

@implementation DRNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 设置导航栏的背景图片
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav"] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[UIImage new]];
    
    // 设置导航栏的字体的颜色,字体大小等
    NSDictionary *navigationBarStyle = @{
                                         NSForegroundColorAttributeName:[UIColor whiteColor],
                                         NSFontAttributeName:[UIFont boldSystemFontOfSize:20]
                                         };
    
    [self.navigationBar setTitleTextAttributes:navigationBarStyle];
    
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
