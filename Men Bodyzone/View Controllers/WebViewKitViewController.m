//
//  WebViewKitViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/29/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "WebViewKitViewController.h"

@interface WebViewKitViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewKitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self playVideo];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void) playVideo{
     NSString *youtubeLink = [NSString stringWithFormat: @"https://www.youtube.com/watch?v=%@", self.key];
                   NSURL *youtubeUrl = [NSURL URLWithString:youtubeLink];
                   NSURLRequest *youtubeRequest = [NSURLRequest requestWithURL: youtubeUrl
                                                         cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                                         timeoutInterval:10.0];
                   [self.webView loadRequest: youtubeRequest];
 
}
@end
