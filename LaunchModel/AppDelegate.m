//
//  AppDelegate.m
//  LaunchModel
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "AppDelegate.h"
#import "DRMainTabBarViewController.h"
#import "DRGuideViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //状态栏白色文字
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    //创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    DRMainTabBarViewController *centerVC = [[DRMainTabBarViewController alloc]init];
    self.window.rootViewController = centerVC;
    
    [self isFirstLaunch];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

//判断是否是第一次启动,是：启动页引导页，否：启动页
- (void)isFirstLaunch{
    if (![[NSUserDefaults standardUserDefaults]boolForKey:@"everLaunched"]) {
        
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"everLaunched"];
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"firstLaunch"];
        NSLog(@"第一次启动");
    }else{
        [[NSUserDefaults standardUserDefaults]setBool:NO forKey:@"firstLaunch"];
        NSLog(@"不是第一次启动");
    }
    [[NSUserDefaults standardUserDefaults]synchronize];
    
    BOOL firstLaunched = [[NSUserDefaults standardUserDefaults]boolForKey:@"firstLaunch"];
    if (firstLaunched) {//判断是否是第一次启动？
        //将self.window.rootViewController的根视图设置为你的引导视图的控制器，然后在引导视图的最后一页实现一个按钮，然后实现presentViewController方法，跳转到你的主页
        DRGuideViewController *vc = [[DRGuideViewController alloc]init];
        self.window.rootViewController = vc;
    }else{
        DRMainTabBarViewController *mainVC = [[DRMainTabBarViewController alloc]init];
        mainVC.view.transform = CGAffineTransformMakeScale(0.1, 0.1);
        
        //让页面由小变大
        [UIView animateWithDuration:1 animations:^{
            mainVC.view.transform = CGAffineTransformIdentity;
        }];
        
        self.window.rootViewController = mainVC;
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
