//
//  AppDelegate.m
//  6.4.UI.Class
//
//  Created by rimi on 15/6/4.
//  Copyright (c) 2015年 rectinajh. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //1 ,设置window
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    //2, 配置根控制器
    ViewController *detailvc = [[ViewController alloc]init];
    //导航控制器：利用栈的结构，本身不做呈现，管理栈的元素：栈，先进后出
    //导航控制器:导航栏默认高度：64
    UINavigationController *nav =[[UINavigationController alloc]initWithRootViewController:detailvc];
    self.window.rootViewController = nav;
    
#pragma mark - 配置导航栏标题,颜色字体阴影
    NSShadow *shadow = [[NSShadow alloc]init];
    shadow.shadowOffset = CGSizeMake(5, 5);
    
    NSDictionary *arribute =
    @{
    //设置字体属性
      NSFontAttributeName:[UIFont systemFontOfSize:10],
    // 设置颜色
      NSForegroundColorAttributeName:[UIColor redColor],
    // 设置阴影
      NSShadowAttributeName:shadow
      };
    //设置文本属性字典
    nav.navigationBar.titleTextAttributes =arribute;
    
#pragma mark - 配置色调
    nav.navigationBar.tintColor = [UIColor purpleColor];
    nav.navigationBar.barTintColor = [UIColor brownColor];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
