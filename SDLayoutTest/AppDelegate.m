//
//  AppDelegate.m
//  SDLayoutTest
//
//  Created by 胡亚刚 on 16/4/20.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "HYG3DTouch.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ViewController * vc = [ViewController new];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    
    
    
    HYG3DTouchItem * item = [HYG3DTouchItem new];
    item.type = @"three";
    item.localizedTitle = @"标签3";
    item.localizedSubtitle = @"333";
    item.iconImageName = @"jieri";
    
    UIApplicationShortcutItem * item1 = [HYG3DTouch initWithItem:item];
    
    HYG3DTouchItem * item2 = [HYG3DTouchItem new];
    item.type = @"four";
    item.localizedTitle = @"标签4";
    item.localizedSubtitle = @"444";
    item.icon = UIApplicationShortcutIconTypeSearch;
    
    UIApplicationShortcutItem * itemm2 = [HYG3DTouch initWithItem:item2];
    [UIApplication sharedApplication].shortcutItems = @[item1,itemm2];
    
    return YES;
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void(^)(BOOL succeeded))completionHandler{
    
    //判断先前我们设置的唯一标识
    
    if([shortcutItem.localizedTitle isEqualToString:@"标签111"]){
        
        NSArray *arr = @[@"hello 3D Touch"];
        
        UIActivityViewController *vc = [[UIActivityViewController alloc]initWithActivityItems:arr applicationActivities:nil];
        
        //设置当前的VC 为rootVC
        
        [self.window.rootViewController presentViewController:vc animated:YES completion:^{
            
        }];
        
    }
    
    if ([shortcutItem.localizedTitle isEqual: @"标签2"]) {
        
        // 点击标签2时，显示提示框
        
        UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"OPPS!" message:@"啦啦啦" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *alert = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        [alertC addAction:alert];
        
        [self.window.rootViewController presentViewController:alertC animated:YES completion:^{
            
        }];
        
        return;
        
    }
    
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
