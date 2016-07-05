//
//  NewsBaseCell.h
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/21.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIView+SDAutoLayout.h>
#import <UITableView+SDAutoTableViewCellHeight.h>
#import <YYWebImage.h>
#import "WYListModel.h"
@interface NewsBaseCell : UITableViewCell
@property (nonatomic,strong) UIImageView * iconImage1;
@property (nonatomic,strong) UIImageView * iconImage2;
@property (nonatomic,strong) UIImageView * iconImage3;
@property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UILabel * subTitleLabel;
@property (nonatomic,strong) WYListModel * data;
@end
