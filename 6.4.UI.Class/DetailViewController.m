//
//  DetailViewController.m
//  6.4.UI.Class
//
//  Created by rimi on 15/6/4.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()


- (void)initializeUserInterface;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)initializeUserInterface
{
    self.view.backgroundColor = [UIColor blueColor];

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //还原
    self.navigationController.toolbarHidden = NO;
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
