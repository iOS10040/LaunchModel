//
//  DRGuideViewController.m
//  LaunchModel
//
//  Created by ru dian on 16/9/8.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "DRGuideViewController.h"
#import "DRMainTabBarViewController.h"

@interface DRGuideViewController ()

@end

@implementation DRGuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupGuideUI];
}

//显示引导页面
- (void)setupGuideUI{
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    
    //引导页的五张图片
    for (int i=0; i<5; i++) {
        
        //引导页
        NSString *guideImageName = [NSString stringWithFormat:@"guide%d.png",i+1];
        UIImageView *guideImageView = [[UIImageView alloc]initWithFrame:CGRectMake(kScreenWidth*i, 0,kScreenWidth , kScreenHeight)];
        guideImageView.image = [UIImage imageNamed:guideImageName];
        [scrollView addSubview:guideImageView];
        
        //进度条
        NSString *progressImageName = [NSString stringWithFormat:@"guideProgress%d.png",i+1];
        UIImageView *progressImageView = [[UIImageView alloc]initWithFrame:CGRectMake((kScreenWidth * i)+(kScreenWidth-173)/2, kScreenHeight-26,173 , 26)];
        progressImageView.image = [UIImage imageNamed:progressImageName];
        [scrollView addSubview:progressImageView];
        
        if (i == 4) {
            UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
            button.frame=CGRectMake((kScreenWidth*i)+(kScreenWidth-80)/2, kScreenHeight-100, 80, 40);
            [button addTarget:self
                       action:@selector(btnAction:)
             forControlEvents:UIControlEventTouchUpInside];
            button.titleLabel.font = [UIFont boldSystemFontOfSize:20];
            [button setTitle:@"点击开启" forState:UIControlStateNormal];
            [button setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
            [scrollView addSubview:button];
        }
    }
    //内容尺寸
    scrollView.contentSize = CGSizeMake(kScreenWidth * 5, kScreenHeight);
    //分页显示
    scrollView.pagingEnabled=YES;
    scrollView.delegate=self;
    [self.view addSubview:scrollView];

}

//按钮的点击方法
-(void)btnAction:(UIButton *)sender{
    
    //切换window的根视图控制器，为MainTabBarCtrl
    DRMainTabBarViewController *mainVC = [[DRMainTabBarViewController alloc]init];
    mainVC.view.transform = CGAffineTransformMakeScale(0.1, 0.1);

    //让页面由小变大
    [UIView animateWithDuration:1 animations:^{
        mainVC.view.transform = CGAffineTransformIdentity;
    }];

    self.view.window.rootViewController = mainVC;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
