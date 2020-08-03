//
//  AccountViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/30/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "AccountViewController.h"
#import "LogViewController.h"

//Frameworks
#import <FBSDKCoreKit/FBSDKProfile.h>
#import <FBSDKLoginKit/FBSDKLoginManager.h>

@interface AccountViewController ()

@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [FBSDKProfile loadCurrentProfileWithCompletion:^(FBSDKProfile * _Nullable profile, NSError * _Nullable error) {
            
            if (profile) {
                
                //get user's profile name
                self.navigationItem.title = [NSString stringWithFormat:@"Hello NO NO", profile.firstName, profile.lastName];
                
                //get user's profile image
                NSURL *url = [profile imageURLForPictureMode:FBSDKProfilePictureModeSquare size:CGSizeMake(35, 35)];
                UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
                
                UIView *profileView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 35, 35)];
                profileView.layer.cornerRadius = profileView.frame.size.width/2;
                profileView.clipsToBounds = YES;
                profileView.userInteractionEnabled = YES;
                UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doSomething)];
                [profileView addGestureRecognizer:gestureRecognizer];
                
                UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
                [profileView addSubview:imageView];
                
                UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:profileView];
                self.navigationItem.rightBarButtonItem = buttonItem;
            }
        }];
    });
    
}


#pragma mark - Helper Methods

-(void) doSomething {
    FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc] init];
    [loginManager logOut];
    
    //Send user back to LoginViewController
    LogViewController *logViewController = [[LogViewController alloc] initWithNibName:@"LogViewController" bundle:nil];
    [self presentViewController:logViewController animated:YES completion:nil];

// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
//*/

@end
