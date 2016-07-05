//
//  WYListModel.h
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/21.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ADs,ImgExtra;
@interface WYListModel : NSObject
@property (nonatomic,copy) NSArray * ads;
@property (nonatomic,copy) NSArray * imgextra;
@property (nonatomic,copy) NSString * alias;
@property (nonatomic,copy) NSString * boardid;
@property (nonatomic,copy) NSString * cid;
@property (nonatomic,copy) NSString * digest;
@property (nonatomic,copy) NSString * docid;
@property (nonatomic,copy) NSString * ename;
@property (nonatomic,assign) NSNumber * hasAD;
@property (nonatomic,assign) NSNumber * hasHead;
@property (nonatomic,assign) NSNumber * hasImg;
@property (nonatomic,assign) NSNumber * order;
@property (nonatomic,assign) NSNumber * priority;
@property (nonatomic,assign) NSNumber * replyCount;
@property (nonatomic,assign) NSNumber * votecount;
@property (nonatomic,assign) Boolean hasCover;
@property (nonatomic,assign) Boolean hasIcon;
@property (nonatomic,copy) NSString * imgsrc;
@property (nonatomic,copy) NSString * lmodify;
@property (nonatomic,copy) NSString * photosetID;
@property (nonatomic,copy) NSString * postid;
@property (nonatomic,copy) NSString * ptime;
@property (nonatomic,copy) NSString * skipID;
@property (nonatomic,copy) NSString * skipType;
@property (nonatomic,copy) NSString * imgType;
@property (nonatomic,copy) NSString * source;
@property (nonatomic,copy) NSString * template;
@property (nonatomic,copy) NSString * title;
@property (nonatomic,copy) NSString * tname;
@end

@interface ADs : NSObject
@property (nonatomic,copy) NSString * imgsrc;
@property (nonatomic,copy) NSString * subtitle;
@property (nonatomic,copy) NSString * tag;
@property (nonatomic,copy) NSString * title;
@property (nonatomic,copy) NSString * url;
@end


@interface ImgExtra : NSObject
@property (nonatomic,copy) NSString * imgsrc;
@end
