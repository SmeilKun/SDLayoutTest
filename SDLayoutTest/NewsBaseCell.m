//
//  NewsBaseCell.m
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/21.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "NewsBaseCell.h"

@implementation NewsBaseCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(UIImageView *)iconImage1
{
    if (!_iconImage1) {
        _iconImage1 = [UIImageView new];
        [self.contentView addSubview:_iconImage1];
    }
    return _iconImage1;
}

-(UIImageView *)iconImage2
{
    if (!_iconImage2) {
        _iconImage2 = [UIImageView new];
        [self.contentView addSubview:_iconImage2];
    }
    return _iconImage2;
}

-(UIImageView *)iconImage3
{
    if (!_iconImage3) {
        _iconImage3 = [UIImageView new];
        [self.contentView addSubview:_iconImage3];
    }
    return _iconImage3;
}

-(UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_titleLabel];
    }
    return _titleLabel;
}

-(UILabel *)subTitleLabel
{
    if (!_subTitleLabel) {
        _subTitleLabel = [UILabel new];
        _subTitleLabel.font = [UIFont systemFontOfSize:13];
        _subTitleLabel.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:_subTitleLabel];
    }
    return _subTitleLabel;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
