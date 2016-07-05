//
//  DetailController.m
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/27.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "DetailController.h"

@interface DetailController ()

@end

@implementation DetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view.
}
- (NSArray *)previewActionItems {
    
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"Action 1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        // 点击此选项触发
        
        
        // 因为预览视图与根视图不在一个视图层级上，所以需要通过根视图去推出这个
        
        
        
    }];
    
    // 可以添加多个选项
    
    NSArray *arr = @[action1];
    
    return arr;
    
}

-(void)dealloc
{
    NSLog(@"我被释放了....");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
