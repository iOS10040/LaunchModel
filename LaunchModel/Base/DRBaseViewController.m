//
//  DRBaseViewController.m
//  LaunchModel
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "DRBaseViewController.h"

@interface DRBaseViewController ()

@property (nonatomic,copy)rightItemBlock2 rightBlock1;

@property (nonatomic,copy)rightItemBlock2 rightBlock2;

@end

@implementation DRBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)createRightButtonWithTitle:(NSString *)title image:(UIImage *)image target:(id)target withBlock:(rightItemBlock2) rightBlock {
    _rightBlock = rightBlock;
    if (title.length>0) {
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:self action:@selector(rightItemAction:)];
        
        [rightButton setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:16],
                                              NSForegroundColorAttributeName : [UIColor whiteColor]} forState:UIControlStateNormal];
        self.navigationItem.rightBarButtonItem = rightButton;
        
    }else if (image) {
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(rightItemAction:)];
        
        self.navigationItem.rightBarButtonItem = rightButton;
        
    }
    
}
- (void)createRightButtonWithImage1:(UIImage *)image1 image2:(UIImage *)image2 target:(id)target withBlock1:(rightItemBlock2) rightBlock1 withBlock2:(rightItemBlock2)rightBlock2{
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.tag = 101;
    [button1 setImage:image1 forState:UIControlStateNormal];
    button1.frame = CGRectMake(0, 0, 30, 30);
    _rightBlock1 = rightBlock1;
    [button1 addTarget:target action:@selector(rightItemAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithCustomView:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.tag = 102;
    [button2 setImage:image2 forState:UIControlStateNormal];
    button2.frame = CGRectMake(0, 0, 30, 30);
    _rightBlock2 = rightBlock2;
    [button2 addTarget:target action:@selector(rightItemAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithCustomView:button2];
    
    
    self.navigationItem.rightBarButtonItems = @[item1,item2];
    
    
}

- (void)rightItemAction:(UIButton *)button{
    switch (button.tag-100) {
        case 1:{
            _rightBlock1();
        }break;
        case 2:{
            _rightBlock2();
        }break;
            
        default:
            _rightBlock();
            break;
    }
    
}

- (void)back {
    if (_backBlock) {
        _backBlock();
    }else {
        [self.navigationController popViewControllerAnimated:true];
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
