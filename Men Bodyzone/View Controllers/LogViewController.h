//
//  LogViewController.h
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/30/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LogViewController : UIViewController <FBSDKLoginButtonDelegate>

@property (weak, nonatomic) IBOutlet UIView *fbLoginButtonView;

@end

NS_ASSUME_NONNULL_END
