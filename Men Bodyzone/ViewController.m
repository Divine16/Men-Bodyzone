//
//  ViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/16/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageView1.animationImages = [NSArray arrayWithObjects:
                                                          
                                       [UIImage imageNamed:@"IMG_0853"],
                                       [UIImage imageNamed:@"IMG_0854"],
                                       [UIImage imageNamed:@"IMG_0855"],
                                       [UIImage imageNamed:@"IMG_0856"],
                                       [UIImage imageNamed:@"IMG_0857"],
                                       [UIImage imageNamed:@"IMG_0860"],
                                       [UIImage imageNamed:@"man"],nil];
    
    [self.imageView1 setAnimationRepeatCount:0];
    self.imageView1.animationDuration = 14;
    [self.imageView1 startAnimating];
                                                          
//                                                          count:<#(NSUInteger)#>]
    
    
}


@end
