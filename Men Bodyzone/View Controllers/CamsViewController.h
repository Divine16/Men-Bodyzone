//
//  CamsViewController.h
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/24/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CamsViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>{
    
    UIImagePickerController *picker;
    UIImage *image;
}



@property (weak, nonatomic) IBOutlet UIImageView *imageview;

- (IBAction)takePhoto:(id)sender;

- (IBAction)choosePhoto:(id)sender;
- (IBAction)savePhoto:(id)sender;


@end

NS_ASSUME_NONNULL_END
