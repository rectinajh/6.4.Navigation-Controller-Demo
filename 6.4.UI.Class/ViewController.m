//
//  ViewController.m
//  6.4.UI.Class
//
//  Created by rimi on 15/6/4.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"



@interface ViewController ()

- (void)initializeUserInterface;

- (void)handleBarButtonEvent:(UIBarButtonItem *)sender;

- (void)handleButtonEvent:(UIBarButtonItem *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initializeUserInterface];
}

- (void)initializeUserInterface
{
    self.title = @"页面";
    
    //创建button
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button1 setTitle:@"模态推送" forState:UIControlStateNormal];
    button1.bounds = CGRectMake(0, 0, 100, 30);
    button1.center = CGPointMake(180, 200);
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button2 setTitle:@"导航推送" forState:UIControlStateNormal];
    button2.bounds = CGRectMake(0, 0, 100, 30);
    button2.center = CGPointMake(180, 230);
    [self.view addSubview:button2];
    
    //添加点击事件
    button1.tag = 50;
    button2.tag = 51;
    
    [button1 addTarget:self action:@selector(handleButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
     [button2 addTarget:self action:@selector(handleButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
#pragma mark - 配置导航栏按钮
    //导航栏上刷新按钮
    UIBarButtonItem *refreshItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(handleBarButtonEvent:)];
    
    UIBarButtonItem *shareItem = [[UIBarButtonItem alloc]initWithTitle:@"分享" style:UIBarButtonItemStylePlain target:self action:@selector(handleBarButtonEvent:)];
    
    //设置标签值
    shareItem.tag = 100;
    //点击分享事件按钮的时候
    self.navigationItem.rightBarButtonItems =@[refreshItem,shareItem];

#pragma mark - 配置工具栏
    //默认情况，工具栏是隐藏的
    self.navigationController.toolbarHidden = NO;
    // 设置按钮
    UIBarButtonItem *Item1 = [[UIBarButtonItem alloc]initWithTitle:@"刷新" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem *Item2 = [[UIBarButtonItem alloc]initWithTitle:@"分享" style:UIBarButtonItemStylePlain target:nil action:nil];
    //弹性控件
    UIBarButtonItem *flexibleItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
    //进行按钮关联
    self.toolbarItems =@[flexibleItem,Item1,
                         flexibleItem,Item2,
                         flexibleItem];
    
}

- (void)handleBarButtonEvent:(UIBarButtonItem *)sender
{
    if (sender.tag == 100) {
        //分享按钮点击的时候
        UIActionSheet   *sheet = [[UIActionSheet alloc]initWithTitle:@"分享" delegate:nil cancelButtonTitle:@"取消" destructiveButtonTitle:@"新浪" otherButtonTitles:@"腾讯", nil];
        [sheet showInView:self.view];
    }
    
}

//界面推送
- (void)handleButtonEvent:(UIBarButtonItem *)sender;
{
    DetailViewController *detailVC =[[DetailViewController alloc]init];
    
    if (sender.tag == 50) {
            //模态推送界面 ,由下往上推送
        [self presentViewController:detailVC animated:YES completion:nil];
    } else {
        //导航推送
        [self.navigationController pushViewController:detailVC animated:YES];
    }
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
