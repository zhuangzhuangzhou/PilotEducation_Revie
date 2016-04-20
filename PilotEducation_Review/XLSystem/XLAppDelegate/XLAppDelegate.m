//
//  XLAppDelegate.m
//  PilotEducation_Review
//
//  Created by mac on 16/3/10.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "XLAppDelegate.h"
#import "XLBaseNavigationController.h"
#import "XLBaseTabBarController.h"
#import <AFNetworking.h>
@interface XLAppDelegate ()

@end

@implementation XLAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
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
+(void) setLoginRoot
{
    
}

+(void) setTabRoot
{
    XLBaseTabBarController * tabbar = [[XLBaseTabBarController alloc] init];
    XLBaseNavigationController * homePageNav = [self createTabWithStoryboardName:@"XLHomePage" identifier:@"homePageNVC" title:@"首页" image:@"tabbar_0_normal"];
    XLBaseNavigationController * applyNav = [self createTabWithStoryboardName:@"XLApply" identifier:@"applyNVC" title:@"报名" image:@"tabbar_5_normal"];
    XLBaseNavigationController * personalCenterNav = [self createTabWithStoryboardName:@"XLPersonalCenter" identifier:@"personalCenterNVC" title:@"个人中心" image:@"tabbar_4_normal"];
    
    tabbar.viewControllers = [NSArray arrayWithObjects:homePageNav,applyNav,personalCenterNav, nil];
    
    XLAppDelegate * appDele = (XLAppDelegate *)[[UIApplication sharedApplication] delegate];
    appDele.window.rootViewController = tabbar;
}

+ (XLBaseNavigationController *) createTabWithStoryboardName:(NSString *) storyName
                                             identifier:(NSString *) identifier
                                                  title:(NSString *) title
                                                  image:(NSString *) imageName
{
    XLBaseNavigationController *  nav =  KSTORYBOAED_ACQUIRE_CONTROLLER(storyName, identifier);
    if (title && imageName) {
        UITabBarItem *firstItem = [[UITabBarItem alloc]initWithTitle:nil image:[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]] selectedImage:nil];
        firstItem.imageInsets = UIEdgeInsetsMake(7, 0, -7, 0);
        nav.topViewController.tabBarItem = firstItem;
    }
    
    return nav;
}
@end
