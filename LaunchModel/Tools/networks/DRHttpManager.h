//
//  HouseManagerClient.h
//  HouseManager
//
//  Created by apple on 14-2-26.
//  Copyright (c) 2014年 apple. All rights reserved.
//


#import "AFNetworking.h"

/**
 *  该类封装了工程与第三方网络请求库的交互的类
 */
//block结果回调
typedef void(^ CompletionBlock)(id result);
@interface DRHttpManager : AFHTTPSessionManager

/**
 *  是否要显示网络请求指示器
 */
@property (nonatomic,assign) BOOL isShowindicator;

/**
 *  网络请求单例工厂方法
 *
 *  @return 网络请求对象
 */
+ (instancetype)sharedDRHttpManager;

//使用第三方封装的网络请求方法
- (NSURLSessionDataTask*)afRequestWithURL:(NSString*)urlString
                                   params:(NSMutableDictionary*)params
                                     data:(NSMutableDictionary*)datas
                               httpMethod:(NSString*)method
                               completion:(CompletionBlock)block;

@end
