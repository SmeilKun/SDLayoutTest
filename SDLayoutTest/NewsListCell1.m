//
//  NewsListCell1.m
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/21.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "NewsListCell1.h"

@implementation NewsListCell1

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self layout];
    }
    return self;
}

-(void)layout
{
    self.iconImage1.sd_layout.leftSpaceToView(self.contentView,10).topSpaceToView(self.contentView,10).widthIs(90).heightIs(60);
    self.titleLabel.sd_layout.leftSpaceToView(self.iconImage1,10).topEqualToView(self.iconImage1).rightSpaceToView(self.contentView,10).heightRatioToView(self.iconImage1,0.3);
    self.subTitleLabel.sd_layout.leftEqualToView(self.titleLabel).topSpaceToView(self.titleLabel,5).rightSpaceToView(self.contentView,10).autoHeightRatio(0);
    
    [self setupAutoHeightWithBottomViewsArray:@[self.iconImage1,self.subTitleLabel] bottomMargin:10];
}

-(void)setData:(WYListModel *)data
{
    if (!data) return;
    [self.iconImage1 yy_setImageWithURL:[NSURL URLWithString:data.imgsrc] placeholder:nil];
    self.titleLabel.text = data.title;
    self.subTitleLabel.text = data.digest;
}

@end
