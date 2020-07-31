//
//  LogViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/30/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "LogViewController.h"
#import "AccountViewController.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface LogViewController ()

@end

@implementation LogViewController

@synthesize fbLoginButtonView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.delegate = self;
    loginButton.center = fbLoginButtonView.center;
    loginButton.permissions = @[@"public_profile", @"email"];
    [self.view addSubview:loginButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - FBSDKLoginButton Delegate Methods

- (void)loginButton:(FBSDKLoginButton *)loginButton
didCompleteWithResult:(nullable FBSDKLoginManagerLoginResult *)result
              error:(nullable NSError *)error {
    
    if (error) {
                NSLog(@"/@", error.localizedDescription);
}
                if (result.isCancelled) {
        NSLog(@"User cancelled the login.");
                } else if (result.declinedPermissions.count > 0){
        NSLog(@"User has declined the Permissions");
                } else {
                    //User logged i succesfully.
                    //Take user to next view
                    AccountViewController *accountViewController = [[AccountViewController alloc] initWithNibName:@"" bundle:nil];
                    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:accountViewController];
                    [self presentViewController:navController animated:YES completion:nil];
                }
}

- (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton {
    NSLog(@"User logged out.");
}
        
@end
