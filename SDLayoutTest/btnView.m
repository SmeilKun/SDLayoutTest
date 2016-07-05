//
//  btnView.m
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/27.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "btnView.h"
#import <UIView+SDAutoLayout.h>
@interface btnView ()
@property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UIImageView * imageView;
@end

@implementation btnView

-(instancetype)init
{
    if (self = [super init]) {
        self.layer.borderColor = [UIColor lightGrayColor].CGColor;
        self.layer.borderWidth = 1;
        [self setUp];
    }
    return self;
}

-(void)setUp
{
    [self addSubview:self.titleLabel];
    [self addSubview:self.imageView];
    
    self.titleLabel.sd_layout.leftSpaceToView(self,5).topSpaceToView(self,10).bottomSpaceToView(self,10);
    [self.titleLabel setSingleLineAutoResizeWithMaxWidth:60];
    
    self.imageView.sd_layout.leftSpaceToView(self.titleLabel,2).widthIs(8).heightIs(8).centerYEqualToView(self.titleLabel);
    [self setupAutoWidthWithRightView:self.imageView rightMargin:5];
}

-(void)setTitle:(NSString *)title
{
    _title = title;
    self.titleLabel.text = title;
    
}

-(UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont systemFontOfSize:15];
    }
    return _titleLabel;
}

-(UIImageView *)imageView
{
    if (!_imageView) {
        _imageView = [UIImageView new];
        _imageView.image = [UIImage imageNamed:@"arrow drop down@2x"];
        
    }
    return _imageView;
}

@end
