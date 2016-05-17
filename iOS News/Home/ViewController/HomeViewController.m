//
//  HomeViewController.m
//  iOS News
//
//  Created by 肖伟华 on 16/5/17.
//  Copyright © 2016年 XWH. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableView.h"

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) HomeTableView *homeTableView;
@property (nonatomic,strong) NSMutableArray *dataArr;

@end

@implementation HomeViewController
- (NSMutableArray *)dataArr
{
    if (!_dataArr) {
        _dataArr = [NSMutableArray array];
    }
    return _dataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self configNav];
    [self setUpView];
}
- (void)configNav
{
    self.title = @"iOS头条";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"navigationbar_setting"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:nil];
}
#pragma mark - setUpView
- (void)setUpView{
    [self.view addSubview:self.homeTableView];
}

- (HomeTableView *)homeTableView{
    if (!_homeTableView) {
        _homeTableView=[[HomeTableView alloc]initWithFrame:self.view.bounds];
        _homeTableView.delegate = self;
        _homeTableView.dataSource = self;
        _homeTableView.rowHeight = 80;
    }
    return _homeTableView;
}

#pragma mark - UITableView delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark - UITableView dataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIde=@"cellIde";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIde];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIde];
    }
        
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
