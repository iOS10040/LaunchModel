//
//  DRANSURL.h
//  ANS
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

/**
 *  本类为工程所有网络请求URL集合
 **/

#import <Foundation/Foundation.h>

@interface DRANSURL : NSObject

/************************************************************************************
 *********************************** 我的URL ********************************************
 ************************************************************************************/


+ (NSString *)registURL;            // 注册

+ (NSString *)validataNumberURL;    // 发送验证码

+ (NSString *)loginUrl;             // 原生登录

+ (NSString *)externalLoginUrl;     // 第三方登录

+ (NSString *)logout;               // 退出登录

+ (NSString *)changePwd;            // 更改密码

+ (NSString *)updateInfoUrl;        // 修改信息

+ (NSString *)getUserInfoUrl;       // 获取用户信息

+ (NSString *)singInURL;            // 签到

+ (NSString *)updateHeaderURL;      // 上传头像

+ (NSString *)missPassword;         // 找回密码

+ (NSString *)myCommentsURL;        // 我的评论

+ (NSString *)deleteCommentURL;     // 删除评论

+ (NSString *)clearCommentURL;      // 清空评论

+ (NSString *)aboutUSURL;           // 关于我们

+ (NSString *)ideaBackURL;          // 意见反馈

+ (NSString *)acceptNotifiyURL;     // 是否接受推送

+ (NSString *)revertionUpdataURL;   // 版本更新

+ (NSString *)scoreURL;             //积分

+ (NSString *)masterIndexURL;       //校园管理活动

+ (NSString *)masterListActURL;     //发布的活动

+ (NSString *)masterDelActURL;      //删除活动

+ (NSString *)myLessonListURL;

+ (NSString *)myLessonDelURL;

+ (NSString *)myLessonClearURL;

+ (NSString *)myCollectSchListURL;

+ (NSString *)myCollectSchDelURL;

+ (NSString *)myCollectSchClearURL;

+ (NSString *)myCollectActListURL;

+ (NSString *)myCollectActDelURL;

+ (NSString *)myCollectActClearURL;

+ (NSString *)myCollectLessListURL;

+ (NSString *)myCollectLessDelURL;

+ (NSString *)myCollectLessClearURL;

+ (NSString *)myActListURL;

+ (NSString *)myActDelURL;

+ (NSString *)myActClearURL;

+ (NSString *)myMessageListURL;

+ (NSString *)myMessageDelURL;

+ (NSString *)myMessageClearURL;

+ (NSString *)myDiscountURL;        // 优惠券

+ (NSString *)releaseActiveURL;     // 发布活动

+ (NSString *)replyLetterURL;       // 回复私信

/************************************************************************************
 *********************************** 首页URL ********************************************
 ************************************************************************************/


+ (NSString *)indexURL;             // 首页

+ (NSString *)showDetail;           // 底部内容

+ (NSString *)bottomDetail;         // 底部详情

+ (NSString *)bottomMoreURL;        // 底部列表更多

+ (NSString *)bottomShareURL;       // 分享

+ (NSString *)bottomZanURL;         // 点赞

+ (NSString *)lessonURL;            // --------最IN课程

+ (NSString *)lessonDeatilURL;      // 课程详情

+ (NSString *)pingLunList;          // 课程评论列表

+ (NSString *)zanURL;               // 点击赞

+ (NSString *)pinglunURL;           // 点击评论

+ (NSString *)shareURL;             // 点击评论

+ (NSString *)familyEduURL;         // --------家庭教育

+ (NSString *)speakerDetailURL;     // 演讲家详情

+ (NSString *)trainUpURL;           // 演讲培养计划

+ (NSString *)growChangeURL;        // 成长蜕变

+ (NSString *)growChangeDeatilURL;  // 成长蜕变详情

+ (NSString *)photoAlbumURL;        // 相册列表

+ (NSString *)speakerMoveURL;       // 演讲家列表

+ (NSString *)speakerZanURL;        // 演讲家赞

+ (NSString *)schoolListURL;        // --------微校接口(学校列表)

+ (NSString *)liWoZuiJinURL;        // 学校离我最近

+ (NSString *)activityURL;          // 活动列表

+ (NSString *)actLiWoZuiJinURL;     // 活动离我最近

+ (NSString *)lessonListURL;        // 公开课列表

+ (NSString *)schoolInfoURL;        // 学校详情展示

+ (NSString *)editSchoolURL;        // 学校主页编辑

+ (NSString *)schoolActivityURL;    // 学校的活动展示

+ (NSString *)schoolCurriculumURL;  // 学校的公开课展示

+ (NSString *)schoolCollectURL;     // 学校的点赞

+ (NSString *)schoolMessageURL;     // 学校私信

+ (NSString *)activityDetailURL;    // 活动详情页

+ (NSString *)activityCollectURL;   // 活动收藏

+ (NSString *)activityZanURL;       // 活动点赞

+ (NSString *)activitycommentURL;   // 发送活动评论

+ (NSString *)activityGetCommentURL;// 活动评论列表

+ (NSString *)activityShareURL;     // 活动分享

+ (NSString *)activityApplyURL;     // 活动报名




+ (NSString *)publicLessonDetailURL;        // 公开课详情
    
+ (NSString *)publicLessonCollectURL;       // 公开课收藏

+ (NSString *)publicLessonZanURL;           // 公开课点赞

+ (NSString *)publicLessonCommentURL;       // 公开课发送评论

+ (NSString *)publicLessonGetCommentURL;    // 公开课评论列表

+ (NSString *)publicLessonShareURL;         // 公开课分享

+ (NSString *)getLessonTypesURL;            // 公开课类型


/************************************************************************************
 *********************************** 搜索URL ********************************************
 ************************************************************************************/

+ (NSString *)searchURL;                // 搜索URL

/************************************************************************************
 *********************************** 发现URL ********************************************
 ************************************************************************************/


+ (NSString *)discoverInformationURL;   // 发现普通用户

+ (NSString *)discoverURL;              // 校长用户

+ (NSString *)youhuiApply;              // 优惠劵领取

+ (NSString *)changeSchoolBkgURL;       // 更换学校背景

/************************************************************************************
 *********************************** 相册URL ********************************************
 ************************************************************************************/


+ (NSString *)schoolMasterPhotoURL;     //照片的详情相册

+ (NSString *)masterPhotoListURL;       //照片列表

+ (NSString *)masterPhotoShowURL;       //照片详情

+ (NSString *)imageCommentURL;          //照片评论

+ (NSString *)praiseImgURL;             //照片点赞

+ (NSString *)photoCommentsURL;         //照片fa评论

+ (NSString *)delPhotoURL;              //相册删除

+ (NSString *)addImgURL;                //上传照片

+ (NSString *)addPhotosURL;             //新建相册

+ (NSString *)delPhotosPhotoURL;        //删除照片

+ (NSString *)editPhotosURL;            //修改相册

/************************************************************************************
 *********************************** 我的URL ********************************************
 ************************************************************************************/


/************************************************************************************
 *********************************** 校长审核URL ********************************************
 ************************************************************************************/

+ (NSString *)principalStateURL;

+ (NSString *)principalApplyURL;

+ (NSString *)principalInfoURL;

+ (NSString *)principalEditURL;

@end
