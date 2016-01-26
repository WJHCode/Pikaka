//
//  AppDelegate.m
//  PiKaKa
//
//  Created by 王建华 on 15/11/10.
//  Copyright © 2015年 王建华. All rights reserved.
//

#import "AppDelegate.h"
#import "JHHomeTabBarController.h"
#import "JHHomeView.h"
#import "JHMessageView.h"
#import "JHAddView.h"
#import "JHDiscoverView.h"
#import "JHMeView.h"
#import "JHMapView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    JHHomeTabBarController *homeView = [JHHomeTabBarController new];
    
    
    JHHomeView *home = [JHHomeView new];
    home.tabBarItem.title = @"首页";
    home.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    home.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_home_highlighted"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    JHMessageView *msgView = [JHMessageView new];
    msgView.tabBarItem.title = @"消息";
    msgView.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    msgView.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_message_center_highlighted"];
    
    JHAddView *addView = [JHAddView new];
    addView.tabBarItem.image = [UIImage imageNamed:@"tabbar_compose_icon_add"];
    addView.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    JHDiscoverView *disCoverView = [JHDiscoverView new];
    disCoverView.tabBarItem.title = @"发现";
    disCoverView.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    disCoverView.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover_highlighted"];
    
    JHMeView *meView = [JHMeView new];
    meView.tabBarItem.title = @"我";
    meView.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    msgView.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_profile_highlighted"];
    
    
    
    homeView.viewControllers = @[home,msgView,addView,disCoverView,meView];
    
    UINavigationController *nav = [UINavigationController new];
    [nav pushViewController:homeView animated:YES];
    
    JHMapView *mapView = [[JHMapView alloc] init];
    self.window.rootViewController = mapView;
    [self.window makeKeyAndVisible];

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
