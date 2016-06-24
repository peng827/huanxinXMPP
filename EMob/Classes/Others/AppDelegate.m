//
//  AppDelegate.m
//  GPUImageTest
//
//  Created by KC on 16/6/3.
//  Copyright © 2016年 KC. All rights reserved.
//

#import "AppDelegate.h"
#import "EMSDK.h"
#import "KCLoginViewController.h"

#define EaseMobAppKey @"easemob-demo#chatdemoui"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    EMOptions *options = [EMOptions optionsWithAppkey:@"iphotoncloud#photonkeybusiness"];
    options.apnsCertName = @"apns_production";
//    [[EMClient sharedClient] initializeSDKWithOptions:options];
    [[EMClient sharedClient] initializeSDKWithOptions:options];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    KCLoginViewController *loginVC = [[KCLoginViewController alloc] init];
    self.window.rootViewController = loginVC;
    [self.window makeKeyAndVisible];
   //注册appkeys
//    EMOptions *options = [EMOptions optionsWithAppkey:@"identifier_appkey"];
//    //设置远程推送证书
//    options.apnsCertName = @"chatdemoui_dev";
//    [[EMClient sharedClient] initializeSDKWithOptions:options];
    
    
    
//
    //设置代理
    
   return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[EMClient sharedClient] applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [[EMClient sharedClient] applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
