//
//  SomeViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/29/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "SomeViewController.h"
#import "WebViewKitViewController.h"
@interface SomeViewController ()
@property(nonatomic, strong) NSArray *links;
@end

@implementation SomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.links = @[@"mQMA88jJrFc", @"TC8ui7WkOao", @"uUKAYkQZXko", @"CLccU7tk7es", @"SuajkDYlIRw", @"jv31A4Ab4nA"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    WebViewKitViewController *web = [segue destinationViewController];
    web.key =self.links[0];
}
@end
