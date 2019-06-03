//
//  AppDelegate.m
//  test
//
//  Created by 兆时代 on 2019/5/6.
//  Copyright © 2019 apple. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

#import <WeexSDK/WXSDKEngine.h>
#import <WeexSDK/WXLog.h>

#import <WeexSDK/WXDebugTool.h>

#import <WeexSDK/WXAppConfiguration.h>

#import "WXImgLoaderDefaultImpl.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //[self initWeexSDK];
//    UINavigationController *nac = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
//
//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    [self.window setRootViewController:nac];
//
//    [self.window makeKeyAndVisible];
//
    return YES;
}

- (void)initWeexSDK {
    
    //业务配置，非必需
    
    [WXAppConfiguration setAppGroup:@"AliApp"];
    
    [WXAppConfiguration setAppName:@"WeexIntegrationDemo"];
    
    [WXAppConfiguration setAppVersion:@"1.0.0"];
    
    //初始化SDK环境
    [WXSDKEngine initSDKEnvironment];
    
    
    
    //注册自定义module和component，非必需
    
    /*
     
     [WXSDKEngine registerComponent:@"MyView" withClass:[MyViewComponent class]];
     
     [WXSDKEngine registerModule:@"event" withClass:[WXEventModule class]];
     */
    
    
    //注册协议的实现类，非必需
    
    [WXSDKEngine registerHandler:[WXImgLoaderDefaultImpl new] withProtocol:@protocol(WXImgLoaderProtocol)];
    
    
    
    //设置Log输出等级：调试环境默认为Debug，正式发布会自动关闭。
    
    [WXLog setLogLevel:WXLogLevelAll];
    
    // 开启debug模式
    
    // [WXDebugTool setDebug:YES];
    
}


@end
