//
//  WYListModel.m
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/21.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "WYListModel.h"

@implementation WYListModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"ads" : [ADs class],
             @"imgextra" : [ImgExtra class]
    };
}
@end

@implementation ADs


@end


@implementation ImgExtra


@end
