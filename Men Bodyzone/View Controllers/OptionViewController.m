//
//  OptionViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/21/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "OptionViewController.h"

@interface OptionViewController ()

@end

@implementation OptionViewController
- (IBAction)Weight:(id)sender {
}
- (IBAction)Muscle:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageView3.animationImages = [NSArray arrayWithObjects:
                                                          
                                       [UIImage imageNamed:@"Flying Man"],
                                       [UIImage imageNamed:@"Fitness logo"],nil];
    
    [self.imageView3 setAnimationRepeatCount:2];
    self.imageView3.animationDuration = 5;
    [self.imageView3 startAnimating];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
