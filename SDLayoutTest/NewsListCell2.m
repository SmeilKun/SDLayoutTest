//
//  NewsListCell2.m
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/21.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "NewsListCell2.h"

@implementation NewsListCell2

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self layout];
    }
    return self;
}

-(void)layout
{
    self.contentView.sd_equalWidthSubviews = @[self.iconImage1,self.iconImage2,self.iconImage3];
    self.titleLabel.sd_layout.leftSpaceToView(self.contentView,10).topSpaceToView(self.contentView,10).rightSpaceToView(self.contentView,10).heightIs(20);
    self.iconImage1.sd_layout.leftSpaceToView(self.contentView,10).topSpaceToView(self.titleLabel,10).autoHeightRatio(0.75);
    self.iconImage2.sd_layout.topSpaceToView(self.titleLabel,10).leftSpaceToView(self.iconImage1,10).autoHeightRatio(0.75);
    self.iconImage3.sd_layout.leftSpaceToView(self.iconImage2,10).rightSpaceToView(self.contentView,10).topSpaceToView(self.titleLabel,10).autoHeightRatio(0.75);
    
    [self setupAutoHeightWithBottomView:self.iconImage1 bottomMargin:10];
}

-(void)setData:(WYListModel *)data
{
    if (!data) return;
    
    self.titleLabel.text = data.title;
    
    [self.iconImage1 yy_setImageWithURL:[NSURL URLWithString:data.imgsrc] placeholder:nil];
    
    [self.iconImage2 yy_setImageWithURL:[NSURL URLWithString:[data.imgextra[0] imgsrc]] placeholder:nil];
    [self.iconImage3 yy_setImageWithURL:[NSURL URLWithString:[data.imgextra[1] imgsrc]] placeholder:nil];
}

@end
