//
//  WorkoutViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/29/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "WorkoutViewController.h"
#import "WorkoutCell.h"

@interface WorkoutViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *workoutNames;

@end

@implementation WorkoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.workoutNames = @[@"Chest", @"Legs", @"Abs", @"Biceps", @"Triceps", @"Shoulders"];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

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



@end
