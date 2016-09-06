//
//  DRMacros.h
//  LaunchModel
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

#ifndef DRMacros_h
#define DRMacros_h

//-------------------1.获取设备大小-------------------------
//屏幕的宽、高，标签栏的高、导航栏的高(此处含状态栏的高20)
#define kScreenWidth ([UIScreen  mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)
#define kTabBarHeight 49
#define kNavigationBarHeight 64
//--------------------------------------------------

//-------------------2.打印日志-------------------------
//DEBUG  模式下打印日志,当前行（发布release的时候不会有输出）
#ifdef DEBUG
#   define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DLog(...)
#endif

//重写NSLog,Debug模式下打印日志和当前行数
#if DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content:%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif
//--------------------------------------------------

//-------------------3.系统相关-------------------------
//获取系统版本
#define IOS_Version [[[UIDevice currentDevice] systemVersion] floatValue]
#define CurrentSystemVersion [[UIDevice currentDevice] systemVersion]
#define Least7 ([[UIDevice currentDevice].systemVersion floatValue] >= 7.0)
#define Least8 ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0)
//获取idfv
#define kIdentifierForVendor [[UIDevice currentDevice].identifierForVendor UUIDString]
//获取当前语言
#define CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])
//判断是真机还是模拟器
#if TARGET_OS_IPHONE//iPhone Device
#endif
#if TARGET_IPHONE_SIMULATOR//iPhone Simulator
#endif
//判断是否是iPad
#define isPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

//-----------------------------------------------------------------

//-------------------4.内存----------------------------------
//使用ARC和不使用ARC
#if __has_feature(objc_arc)//compiling with ARC
#else// compiling without ARC
#endif
//-----------------------------------------------------------------

//-------------------5.图片----------------------------------
//从自定义的bundle文件中读取图片的路径（类型为NSString）
#define imagePath ([[NSBundle bundleWithPath:[[NSBundle mainBundle]pathForResource:@"bundle文件名.bundle" ofType:nil]]pathForResource:@"图片名" ofType:@"png"])

//定义UIImage对象（A为图片的名称）
#define IMAGE(A) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:A ofType:nil]]

//-----------------------------------------------------------------
//---------------------6.plist资源文件--------------------------------------------
//读取plist资源文件（字典类型，用字典接收）
#define plist_Dic(plistName) ([NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle]pathForResource:plistName ofType:nil]])

//读取plist资源文件（数组类型，用数组接收）
#define plist_array(plistName) ([NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:plistName ofType:nil]])
//-----------------------------------------------------------------
//-----------------------7.颜色类------------------------------------------
//获取RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)

//清除背景色
#define CLEARCOLOR [UIColor clearColor]

//rgb颜色转换（16进制->10进制）
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
//-----------------------------------------------------------------
//-------------------------8.其他的----------------------------------------
//方正黑体简体字体定义
#define FONT(F) [UIFont fontWithName:@"FZHTJW--GB1-0" size:F]

//由角度获取弧度
#define degreesToRadian(x) (M_PI * (x) / 180.0)
//由弧度获取角度
#define radianToDegrees(radian) (radian * 180.0) / (M_PI)

//单例化一个类
#define SYNTHESIZE_SINGLETON_FOR_CLASS(classname) \
\
static classname *shared##classname = nil; \
\
+ (classname *)shared##classname \
{ \
@synchronized(self) \
{ \
if (shared##classname == nil) \
{ \
shared##classname = [[self alloc] init]; \
} \
} \
\
return shared##classname; \
} \
\
+ (id)allocWithZone:(NSZone *)zone \
{ \
@synchronized(self) \
{ \
if (shared##classname == nil) \
{ \
shared##classname = [super allocWithZone:zone]; \
return shared##classname; \
} \
} \
\
return nil; \
} \
\
- (id)copyWithZone:(NSZone *)zone \
{ \
return self; \
}
/*
 使用方式：
 在头文件声明方法：+ (类名 *)shared类名;
 然后在实现文件使用：SYNTHESIZE_SINGLETON_FOR_CLASS(类名);
 */
//-----------------------------------------------------------------

/**
 *  导航栏返回按钮
 */
#define SET_NAV_BTN(__arg__, __item__,__ftn__,__title__)     UIButton * __arg__=[UIButton buttonWithType:UIButtonTypeCustom];__arg__.frame=CGRectMake(0, 0, 35, 20);[__arg__ setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];[__arg__ setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 15)];[__arg__ addTarget:self action:@selector(__ftn__) forControlEvents:UIControlEventTouchUpInside];self.navigationItem.__item__=[[UIBarButtonItem alloc]initWithCustomView:__arg__];

//常用的文件存储路径
#define kFileName @"miner.plist"
#define kDocument [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
#define kPath [kDocument stringByAppendingPathComponent:kFileName]

#endif /* DRMacros_h */
