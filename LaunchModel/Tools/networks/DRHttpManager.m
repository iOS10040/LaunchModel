//
//  HouseManagerClient.m
//  HouseManager
//
//  Created by apple on 14-2-26.
//  Copyright (c) 2014年 apple. All rights reserved.
//


#import "DRHttpManager.h"

@implementation DRHttpManager

static DRHttpManager *instance = nil;
+ (instancetype)sharedDRHttpManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[DRHttpManager alloc]initWithBaseURL:[NSURL URLWithString:@""]];
        instance.requestSerializer = [AFHTTPRequestSerializer serializer];
        // 设置请求超时时间
        instance.session.configuration.timeoutIntervalForResource = 20;
    });
    return instance;
}

//使用第三方封装的网络请求方法
- (NSURLSessionDataTask*)afRequestWithURL:(NSString*)urlString
                                   params:(NSMutableDictionary*)params
                                     data:(NSMutableDictionary*)datas
                               httpMethod:(NSString*)method
                               completion:(CompletionBlock)block;
{
    //1.构造url(完整)
    NSString *fullString = [NSURL URLWithString:urlString] ? urlString : [self strUTF8Encoding:urlString];
    
    //2.拼接参数
    if (params == nil) {
        params = [NSMutableDictionary dictionary];
    }
    
    //3.AFSessionManager
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    
    //4.序列化方式
    //序列化response
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    //manager.requestSerializer=[AFJSONRequestSerializer serializer];
    
    NSURLSessionDataTask* task = nil;
    
    //5.发送请求
    if ([method isEqualToString:@"GET"]) {
        //GET请求, 设置参数
        task = [manager GET:fullString parameters:params success:^(NSURLSessionDataTask* task, id responseObject) {
            //拿到请求结果,回调
            dispatch_async(dispatch_get_main_queue(), ^{
                block(responseObject);
            });
        } failure:^(NSURLSessionDataTask* task, NSError* error) {
            NSLog(@"%@",error);
        }];
    }
    else if ([method isEqualToString:@"POST"]) {
        //POST请求
        if (datas == nil) {
            //没有请求体
            task = [manager POST:fullString parameters:params success:^(NSURLSessionDataTask* task, id responseObject) {
                //拿到请求结果,回调
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    block(responseObject);
                });
            } failure:^(NSURLSessionDataTask* task, NSError* error) {
                NSLog(@"%@",error);
            }];
        }
        else {
            //有要上传的数据
            task = [manager POST:fullString parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
                
                //datas key:data
                //构造请求体
                for (NSString *key in datas) {
                    
                    //要上传的每一条数据
                    //key(key)=value(data)
                    NSLog(@"-------%@",key);
                    NSData *data = [datas objectForKey:key];
                    
                    //data: 要添加的数据
                    //name: 数据对应的key
                    //filename: 服务器可以接受的文件名
                    //mimeType: 文件的类型
                    [formData appendPartWithFileData:data
                                                name:key
                                            fileName:@"file"
                                            mimeType:@"image/jpeg"];
                }
            } success:^(NSURLSessionDataTask* task, id responseObject) {
                //拿到请求结果,回调
                dispatch_async(dispatch_get_main_queue(), ^{
                    block(responseObject);
                });
            } failure:^(NSURLSessionDataTask* task, NSError* error) {
                NSLog(@"%@",error);
            }];
        }
    }
    return task;
}
- (NSString *)strUTF8Encoding:(NSString *)str
{
    /*! ios9适配的话 打开第一个 */
    //return [str stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]];
    return [str stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

@end
