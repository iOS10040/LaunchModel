//
//  DRNavigationController.m
//  LaunchModel
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "DRNavigationController.h"
#import "DRMainTabBarViewController.h"

@interface DRNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation DRNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // 获取系统自带滑动手势的target对象
    id target = self.interactivePopGestureRecognizer.delegate;
    
    // 创建全屏滑动手势，调用系统自带滑动手势的target的action方法
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
    
    // 设置手势代理，拦截手势触发
    pan.delegate = self;
    
    // 给导航控制器的view添加全屏滑动手势
    [self.view addGestureRecognizer:pan];
    
    // 禁止使用系统自带的滑动手势
    self.interactivePopGestureRecognizer.enabled = NO;
    
    
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

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    // 注意：只有非根控制器才有滑动返回功能，根控制器没有。
    // 判断导航控制器是否只有一个子控制器，如果只有一个子控制器，肯定是根控制器
    if (self.childViewControllers.count == 1) {
        // 表示用户在根控制器界面，就不需要触发滑动手势，
        return NO;
    }
    return YES;
}

#pragma mark - 重写系统的push、pop方法,在二级及以上页面隐藏"tabBar"
/**
 *  重写push方法可以拦截系统的push方法，在这里所有退出的新页面隐藏下面的tabbar
 *
 *  @param viewController 推出的新页面
 *  @param animated       是否有动画
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //拦截push 跳转到二级及以上页面时，隐藏tabbar
    if (self.childViewControllers.count >= 1) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

/**
 *  重写pop方法可以拦截系统的pop方法，在这里可以将pop的以前的页面设置一些属性
 *  @param animated   是否有动画
 *  @return           返回值是pop的页面
 */
- (UIViewController *)popViewControllerAnimated:(BOOL)animated{
    return [super popViewControllerAnimated:animated];
}

- (NSArray<UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated{
    //[DRMainTabBarViewController sharedTabBarVC].hidesBottomBarWhenPushed = NO;
    return [super popToRootViewControllerAnimated:animated];
}

- (NSArray<UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated{
    return [super popToViewController:viewController animated:animated];
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
