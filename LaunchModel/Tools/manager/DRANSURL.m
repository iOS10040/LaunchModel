//
//  DRANSURL.m
//  ANS
//
//  Created by ru dian on 16/9/2.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "DRANSURL.h"

#define BASEURL @"http://app.ainengshe.com/"

@implementation DRANSURL

+ (NSString *)registURL;
{
    return [NSString stringWithFormat:@"%@User/register",BASEURL];
}

+ (NSString *)loginUrl
{
    return [NSString stringWithFormat:@"%@User/login",BASEURL];
}

+ (NSString *)logout
{
    return [NSString stringWithFormat:@"%@User/logout",BASEURL];
}

+ (NSString *)changePwd
{
    return [NSString stringWithFormat:@"%@User/changeUserPwd",BASEURL];
}

+ (NSString *)getUserInfoUrl
{
    return [NSString stringWithFormat:@"%@User/getUserInfo",BASEURL];
}

+ (NSString *)updateInfoUrl
{
    return [NSString stringWithFormat:@"%@User/updateInfo",BASEURL];
}

+ (NSString *)updateHeaderURL
{
    return [NSString stringWithFormat:@"%@User/updateHeader",BASEURL];
}

+ (NSString *)missPassword
{
    return [NSString stringWithFormat:@"%@User/findPwd",BASEURL];
}

+ (NSString *)scoreURL
{
    return [NSString stringWithFormat:@"%@My/score",BASEURL];
}

+ (NSString *)editSchoolURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/schoolEdit",BASEURL];
}

+ (NSString *)masterIndexURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/index",BASEURL];
}

+ (NSString *)masterListActURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/listAct",BASEURL];
}

+ (NSString *)masterDelActURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/del",BASEURL];
}

+ (NSString *)releaseActiveURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/activityAdd",BASEURL];
}

+ (NSString *)indexURL
{
    return [NSString stringWithFormat:@"%@Index/index",BASEURL];
}

+ (NSString *)showDetail
{
    return [NSString stringWithFormat:@"%@Index/indexContent",BASEURL];
}

+ (NSString *)bottomDetail
{
    return [NSString stringWithFormat:@"%@Index/indexContent",BASEURL];
}

+ (NSString *)lessonURL
{
    return [NSString stringWithFormat:@"%@Curriculum/index",BASEURL];
}

+ (NSString *)lessonDeatilURL
{
    return [NSString stringWithFormat:@"%@Curriculum/infoComment",BASEURL];
}

+ (NSString *)speakerDetailURL
{
    return [NSString stringWithFormat:@"%@Juvenile/speaker_detail",BASEURL];
}

+ (NSString *)zanURL
{
    return [NSString stringWithFormat:@"%@Curriculum/praise",BASEURL];
}

+ (NSString *)pinglunURL
{
    return [NSString stringWithFormat:@"%@Curriculum/comment",BASEURL];
}

+ (NSString *)pingLunList
{
    return [NSString stringWithFormat:@"%@Curriculum/commentList",BASEURL];
}

+ (NSString *)shareURL
{
    return [NSString stringWithFormat:@"%@Curriculum/share",BASEURL];
}

+ (NSString *)familyEduURL
{
    return [NSString stringWithFormat:@"%@Juvenile/familyindex",BASEURL];
}

+ (NSString *)trainUpURL
{
    return [NSString stringWithFormat:@"%@Juvenile/speechindex",BASEURL];
}

+ (NSString *)growChangeURL
{
    return [NSString stringWithFormat:@"%@Juvenile/growUp",BASEURL];
}

+ (NSString *)photoAlbumURL
{
    return [NSString stringWithFormat:@"%@Juvenile/photo",BASEURL];
}

+ (NSString *)speakerMoveURL
{
    return [NSString stringWithFormat:@"%@Juvenile/video",BASEURL];
}

+ (NSString *)speakerZanURL
{
    return [NSString stringWithFormat:@"%@Juvenile/praise",BASEURL];
}

+ (NSString *)schoolListURL
{
    return [NSString stringWithFormat:@"%@School/school",BASEURL];
}

+ (NSString *)liWoZuiJinURL
{
    return [NSString stringWithFormat:@"%@School/schoolDistance",BASEURL];
}

+ (NSString *)activityURL
{
    return [NSString stringWithFormat:@"%@School/activity",BASEURL];
}

+ (NSString *)actLiWoZuiJinURL
{
    return [NSString stringWithFormat:@"%@School/activityDistance",BASEURL];
}

+ (NSString *)lessonListURL
{
    return [NSString stringWithFormat:@"%@School/curriculum",BASEURL];
}

+ (NSString *)schoolInfoURL
{
    return [NSString stringWithFormat:@"%@School/schoolInfo",BASEURL];
}

//学校的活动展示
+ (NSString *)schoolActivityURL
{
    return [NSString stringWithFormat:@"%@School/schoolActivity",BASEURL];
}

//学校的点赞
+ (NSString *)schoolCollectURL
{
    return [NSString stringWithFormat:@"%@School/schoolCollect",BASEURL];
}

//学校的公开课展示
+ (NSString *)schoolCurriculumURL
{
    return [NSString stringWithFormat:@"%@School/schoolCurriculum",BASEURL];
}

// 成长蜕变详情
+ (NSString *)growChangeDeatilURL
{
    return [NSString stringWithFormat:@"%@Juvenile/growUpShow",BASEURL];
}

+ (NSString *)activityDetailURL
{
    return [NSString stringWithFormat:@"%@School/activityInfo",BASEURL];
}

+ (NSString *)activityCollectURL
{
    return [NSString stringWithFormat:@"%@School/activityCollect",BASEURL];
}

+ (NSString *)activityZanURL
{
    return [NSString stringWithFormat:@"%@School/activityPraise",BASEURL];
}

+ (NSString *)activitycommentURL
{
    return [NSString stringWithFormat:@"%@School/activityContment",BASEURL];
}

+ (NSString *)activityShareURL
{
    return [NSString stringWithFormat:@"%@School/activityShare",BASEURL];
}

+ (NSString *)activityApplyURL
{
    return [NSString stringWithFormat:@"%@School/activityApply",BASEURL];
}

+ (NSString *)activityGetCommentURL
{
    return [NSString stringWithFormat:@"%@School/activityContmentIndex",BASEURL];
}

+ (NSString *)schoolMessageURL
{
    return [NSString stringWithFormat:@"%@School/schoolMessage",BASEURL];
}

+ (NSString *)publicLessonDetailURL
{
    return [NSString stringWithFormat:@"%@School/curriculumInfo",BASEURL];
}

+ (NSString *)publicLessonCollectURL
{
    return [NSString stringWithFormat:@"%@School/curriculumCollect",BASEURL];
}

+ (NSString *)publicLessonZanURL
{
    return [NSString stringWithFormat:@"%@School/curriculumPraise",BASEURL];
}

+ (NSString *)publicLessonCommentURL
{
    return [NSString stringWithFormat:@"%@School/curriculumContment",BASEURL];
}

+ (NSString *)publicLessonGetCommentURL
{
    return [NSString stringWithFormat:@"%@School/curriculumContmentIndex",BASEURL];
}

+ (NSString *)publicLessonShareURL
{
    return [NSString stringWithFormat:@"%@School/curriculumShare",BASEURL];
}

+ (NSString *)getLessonTypesURL
{
    return [NSString stringWithFormat:@"%@School/curriculumType",BASEURL];
}

+ (NSString *)singInURL
{
    return [NSString stringWithFormat:@"%@My/sign",BASEURL];
}

+ (NSString *)myCommentsURL
{
    return [NSString stringWithFormat:@"%@My/commentIndex",BASEURL];
}

+ (NSString *)deleteCommentURL
{
    return [NSString stringWithFormat:@"%@My/commentDel",BASEURL];
}

+ (NSString *)clearCommentURL
{
    return [NSString stringWithFormat:@"%@My/commentEmpty",BASEURL];
}

+ (NSString *)aboutUSURL
{
    return [NSString stringWithFormat:@"%@My/about",BASEURL];
}

+ (NSString *)ideaBackURL
{
    return [NSString stringWithFormat:@"%@My/feedback",BASEURL];
}

+ (NSString *)acceptNotifiyURL
{
    return [NSString stringWithFormat:@"%@My/ispush",BASEURL];
}

+ (NSString *)revertionUpdataURL
{
    return [NSString stringWithFormat:@"%@My/edition",BASEURL];
}

+ (NSString *)myDiscountURL
{
    return [NSString stringWithFormat:@"%@My/privilege",BASEURL];
}



+ (NSString *)bottomMoreURL
{
    return [NSString stringWithFormat:@"%@Index/cidList",BASEURL];
}

+ (NSString *)bottomShareURL
{
    return [NSString stringWithFormat:@"%@Index/share",BASEURL];
}

+ (NSString *)bottomZanURL
{
    return [NSString stringWithFormat:@"%@Index/pra",BASEURL];
}


+ (NSString *)validataNumberURL
{
    return [NSString stringWithFormat:@"%@User/send_code",BASEURL];
}





+ (NSString *)externalLoginUrl
{
    return [NSString stringWithFormat:@"%@User/externalLogin",BASEURL];
}

// 获取主页下面四小模块数据URL
+ (NSString *)getFourDatasInMainView
{
    return [NSString stringWithFormat:@"%@User/register",BASEURL];

}

// 获取最IN课程界面-家庭教育URL
+ (NSString *)getFamilyEducation
{
    return [NSString stringWithFormat:@"%@User/register",BASEURL];
}

// 获取最IN课程界面-学科教育URL
+ (NSString *)getSubjectsEducation
{
    return [NSString stringWithFormat:@"%@User/register",BASEURL];
}

// // 未读通知
//+ (NSString *)unreadNotifitionUrl
//{
//    return [NSString stringWithFormat:@"%@User/register",BASEURL];
//}

#pragma mark====相册=
//相册列表
+ (NSString *)masterPhotoListURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/photosIndex",BASEURL];
}

//相册详情
+ (NSString *)masterPhotoShowURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/showPhotos",BASEURL];
}

//评论
+ (NSString *)imageCommentURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/contmentPhotosPhotoIndex",BASEURL];
}
//删除照片
+ (NSString *)delPhotosPhotoURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/delPhotosPhoto",BASEURL];
}

//学校的详情相册
+ (NSString *)schoolMasterPhotoURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/newPhotosPhoto",BASEURL];
}
//相册点赞
+ (NSString *)praiseImgURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/praisePhotosPhoto",BASEURL];
}

//照片fa评论
+ (NSString *)photoCommentsURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/contmentPhotosPhoto",BASEURL];
}

//相册删除
+ (NSString *)delPhotoURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/delPhotos",BASEURL];
}

//上传照片
+ (NSString *)addImgURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/addPhotosPhoto",BASEURL];
}

//新建相册
+ (NSString *)addPhotosURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/addPhotos",BASEURL];
}

//修改相册
+ (NSString *)editPhotosURL
{
    return [NSString stringWithFormat:@"%@SchoolMaster/editPhotos",BASEURL];
}


+ (NSString *)changeSchoolBkgURL
{
    return [NSString stringWithFormat:@"%@School/apifun",BASEURL];
}

#pragma mark ======================================我的URL=========================================
+ (NSString *)myLessonListURL
{
    return [NSString stringWithFormat:@"%@My/curriculum",BASEURL];
}

+ (NSString *)myLessonDelURL
{
    return [NSString stringWithFormat:@"%@My/curriculumDel",BASEURL];
}

+ (NSString *)myLessonClearURL
{
    return [NSString stringWithFormat:@"%@My/curriculumEmpty",BASEURL];
}

+ (NSString *)myCollectSchListURL
{
    return [NSString stringWithFormat:@"%@My/collectSchool",BASEURL];
}

+ (NSString *)myCollectSchDelURL
{
    return [NSString stringWithFormat:@"%@My/collectSchoolDel",BASEURL];
}

+ (NSString *)myCollectSchClearURL
{
    return [NSString stringWithFormat:@"%@My/collectSchoolEmpty",BASEURL];
}

+ (NSString *)myCollectActListURL
{
    return [NSString stringWithFormat:@"%@My/collectActivity",BASEURL];
}

+ (NSString *)myCollectActDelURL
{
    return [NSString stringWithFormat:@"%@My/collectActivityDel",BASEURL];
}

+ (NSString *)myCollectActClearURL
{
    return [NSString stringWithFormat:@"%@My/collectActivityEmpty",BASEURL];
}

+ (NSString *)myCollectLessListURL
{
    return [NSString stringWithFormat:@"%@My/collectCurriculum",BASEURL];
}

+ (NSString *)myCollectLessDelURL
{
    return [NSString stringWithFormat:@"%@My/collectCurriculumDel",BASEURL];
}

+ (NSString *)myCollectLessClearURL
{
    return [NSString stringWithFormat:@"%@My/collectCurriculumEmpty",BASEURL];
}

+ (NSString *)myActListURL
{
    return [NSString stringWithFormat:@"%@My/activity",BASEURL];
}

+ (NSString *)myActDelURL
{
    return [NSString stringWithFormat:@"%@My/activityDel",BASEURL];
}


+ (NSString *)replyLetterURL
{
    return [NSString stringWithFormat:@"%@My/messageReply",BASEURL];
}


+ (NSString *)myActClearURL
{
    return [NSString stringWithFormat:@"%@My/activityEmpty",BASEURL];
}

+ (NSString *)myMessageListURL
{
    return [NSString stringWithFormat:@"%@My/message",BASEURL];
}

+ (NSString *)myMessageDelURL
{
    return [NSString stringWithFormat:@"%@My/messageDel",BASEURL];
}

+ (NSString *)myMessageClearURL
{
    return [NSString stringWithFormat:@"%@My/messageEmpty",BASEURL];
}

+ (NSString *)principalStateURL
{
    return [NSString stringWithFormat:@"%@My/principalState",BASEURL];
}

+ (NSString *)principalApplyURL
{
    return [NSString stringWithFormat:@"%@My/principal",BASEURL];
}

+ (NSString *)principalInfoURL
{
    return [NSString stringWithFormat:@"%@My/principalInfo",BASEURL];
}

+ (NSString *)principalEditURL
{
    return [NSString stringWithFormat:@"%@My/principalEdit",BASEURL];
}

#pragma mark -- 发现URL

+ (NSString *)discoverInformationURL
{
    return [NSString stringWithFormat:@"%@Find/user",BASEURL];
}

+ (NSString *)discoverURL
{
    return [NSString stringWithFormat:@"%@Find/schoolmaster",BASEURL];
}

+ (NSString *)youhuiApply
{
    return [NSString stringWithFormat:@"%@Find/privilegeApply",BASEURL];
}


+ (NSString *)searchURL
{
    return [NSString stringWithFormat:@"%@School/search",BASEURL];
}


@end
