//
//  ViewController.m
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/20.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "ViewController.h"
#import <UIView+SDAutoLayout.h>
#import <AFNetworking.h>
#import "NewsBaseCell.h"
#import "NewsListCell1.h"
#import "NewsListCell2.h"
#import "WYListModel.h"
#import <YYModel.h>
#import "DetailController.h"
#import "btnView.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UIViewControllerPreviewingDelegate>
{
    UITableView * _tableView;
    NSMutableArray * _dataArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataArray = [NSMutableArray array];
    
    [self createTableView];
    [self loadData];
}


- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    
     DetailController*content = [[DetailController alloc] init];
    
    return content;
}

- (void)previewingContext:(id)previewingContext commitViewController:(UIViewController *)viewControllerToCommit

{
    viewControllerToCommit.view.backgroundColor = [UIColor whiteColor];
    
    [self showViewController:viewControllerToCommit sender:self];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WYListModel * data = _dataArray[indexPath.row];
    if (data.imgextra) {
        return [tableView cellHeightForIndexPath:indexPath model:data keyPath:@"data" cellClass:NSClassFromString(@"NewsListCell2") contentViewWidth:self.view.width];
    }else{
        return [tableView cellHeightForIndexPath:indexPath model:data keyPath:@"data" cellClass:NSClassFromString(@"NewsListCell1") contentViewWidth:self.view.width];
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WYListModel * data = _dataArray[indexPath.row];
    if (data.imgextra){
        NewsListCell2 *cell =  [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([NewsListCell2 class])];
        [self registerForPreviewingWithDelegate:self sourceView:cell];
        cell.data = data;
        
        return cell;
    }else{
        NewsListCell1 *cell =  [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([NewsListCell1 class])];
        cell.data = data;
        [self registerForPreviewingWithDelegate:self sourceView:cell];
        return cell;
    }
    
    return nil;
}

-(void)createTableView
{
    if (!_tableView) {
        self.automaticallyAdjustsScrollViewInsets = NO;
        _tableView = [UITableView new];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        [self.view addSubview:_tableView];
    }
    
    [_tableView registerClass:[NewsListCell1 class] forCellReuseIdentifier:NSStringFromClass([NewsListCell1 class])];
    [_tableView registerClass:[NewsListCell2 class] forCellReuseIdentifier:NSStringFromClass([NewsListCell2 class])];
    
    _tableView.sd_layout.leftSpaceToView(self.view,0).rightSpaceToView(self.view,0).topSpaceToView(self.view,64).bottomSpaceToView(self.view,0);
    
}

-(void)loadData
{
   NSString * url = @"http://c.m.163.com/nc/article/headline/T1348647853363/0-20.html";
    
    AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSData * data = (NSData *)responseObject;
        NSDictionary * dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSArray * list = dic[@"T1348647853363"];
        if (list.count==0) return ;
        for (NSDictionary * ddic in list) {
            WYListModel * model = [WYListModel yy_modelWithDictionary:ddic];
            if (!model.imgType||!model.hasHead) {
                [_dataArray addObject:model];
            }
        }
        [_tableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error : %@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
