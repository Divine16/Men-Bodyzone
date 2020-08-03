//
//  WorkoutViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/29/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "WorkoutViewController.h"
#import "WebViewKitViewController.h"
#import "WorkoutCell.h"

@interface WorkoutViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *workoutNames;
@property(nonatomic, strong) NSArray *links;

@end

@implementation WorkoutViewController

- (void)viewDidLoad {
    
    UIImageView *myImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Fitness logo.jpg"]];
                                                               [self.view addSubview:myImage];
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.workoutNames = @[@"Chest", @"Legs", @"Abs", @"Biceps", @"Triceps", @"Shoulders"];
    self.links = @[@"mQMA88jJrFc", @"TC8ui7WkOao", @"uUKAYkQZXko", @"CLccU7tk7es", @"SuajkDYlIRw", @"jv31A4Ab4nA"];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    WorkoutCell *cell = [tableView dequeueReusableCellWithIdentifier: @"WorkoutCell" forIndexPath: indexPath];
    cell.workoutImage.image = [UIImage imageNamed: self.workoutNames[indexPath.row]];
    cell.workoutImage.layer.cornerRadius = 18;
    cell.workoutImage.layer.masksToBounds = YES;
    cell.workoutLabel.text = self.workoutNames[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.workoutNames.count;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    WebViewKitViewController *webController = [segue destinationViewController];
    UITableViewCell *tappedCell = sender;
    NSIndexPath *indexPath = [self.tableView indexPathForCell: tappedCell];
    webController.key = self.links[indexPath.row];
}




@end
