//
//  AppDelegate.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/16/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "AppDelegate.h"
#import "Parse/Parse.h"
#import "LogViewController.h"
#import "AccountViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
//#import <ParseFacebookUtilsV4/PFFacebookUtils.h>


#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(  NSDictionary *)launchOptions {
    
//    - (void) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//      [Parse setApplicationId:@"parseAppId" clientKey:@"parseClientKey"];
//      [PFFacebookUtils initializeFacebookWithApplicationLaunchOptions:launchOptions];
//    }
    ParseClientConfiguration *config = [ParseClientConfiguration   configurationWithBlock:^(id<ParseMutableClientConfiguration> configuration) {
        
        configuration.applicationId = @"myid";
        configuration.clientKey=@"mymaster";
        configuration.server = @"http://menbodyzone.herokuapp.com/parse";
    }];
    
    [Parse initializeWithConfiguration:config];
    
    return YES;
}

//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   // self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

/*   [[FBSDKApplicationDelegate sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
    
    if ([FBSDKAccessToken currentAccessToken]) {
        //Take user AccountViewController
        AccountViewController *accountViewController = [[AccountViewController alloc] initWithNibName:@"" bundle:nil];
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:accountViewController];
        self.window.rootViewController = navController;
    } else {
        LogViewController *logViewController = [[LogViewController alloc] initWithNibName:@"LogViewController" bundle:nil];
        self.window.rootViewController = logViewController;
    }
    
    [self.window makeKeyAndVisible];  */
//    return YES;
//}

- (BOOL)application:(UIApplication *) application openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
                          
    BOOL handled = [[FBSDKApplicationDelegate sharedInstance]
                                            application:application openURL: url sourceApplication:sourceApplication
                                            annotation:annotation];
    return handled;
}
#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//     Called when the user discards a scene session.
//     If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//     Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
