//
//  DRBaseViewController.h
//  LaunchModel
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  控制器的基类,主要负责设置二级控制器页面的样式(比如返回按钮)
 *
 *  注意:不包含底部的Tabbar控制器和顶部的导航控制器
 */

typedef void(^rightItemBlock2)();

@interface DRBaseViewController : UIViewController

//右侧的
@property (nonatomic,copy)rightItemBlock2 rightBlock;
//重写系统的
@property (nonatomic,copy)rightItemBlock2 backBlock;

//类型一：带标题、图片
- (void)createRightButtonWithTitle:(NSString *)title image:(UIImage *)image target:(id)target withBlock:(rightItemBlock2) rightBlock;

//类型二：带两张图片
- (void)createRightButtonWithImage1:(UIImage *)image1 image2:(UIImage *)image2 target:(id)target withBlock1:(rightItemBlock2) rightBlock1 withBlock2:(rightItemBlock2)rightBlock2;

//返回
- (void)back;

@end
