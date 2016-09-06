//
//  DRTabBarButton.h
//  LaunchModel
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum : NSUInteger {
    buttonTypeNormal,    //默认  左边图  右边文字 (可不写)
    buttonTypePicTop,    // 图片在上面 文字在下面
    buttonTypePicRight,  // 图片在右边 文字在左边
    buttonTypePictBottom //文字在上面  图片在下面
} ButtonType;

typedef enum : NSUInteger {
    buttonAlignWithNormal,  //默认   (可不写)
    buttonAlignWithPic,     //以图片为基准进行调整距离边缘的位置
    buttonAlignWithTitle    //以文字为基准进行调整距离边缘的位置
}ButtonAlignType;

@interface DRTabBarButton : UIButton

//选择图文排列类型
@property (nonatomic,assign) ButtonType type;

//调整距离边缘的位置
@property (nonatomic,assign) ButtonAlignType alignType;

//图片文字之间的间距
@property (nonatomic,assign) NSInteger picTileRange;

//以图片为基准,设置图片距离边缘的位置
@property (nonatomic,assign) NSInteger picToViewRange;

@end
