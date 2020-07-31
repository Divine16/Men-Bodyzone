//
//  CamsViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/24/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "CamsViewController.h"

@interface CamsViewController ()

@end

@implementation CamsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)savePhoto:(id)sender {
    
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:picker animated:YES completion:NULL];
}

- (IBAction)choosePhoto:(id)sender {
    
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    [picker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:picker animated:YES completion:NULL];
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    
    image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [self.imageview setImage:image];
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)takePhoto:(id)sender {
    
    UIImage *image = self.imageview.image;
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
}
@end
