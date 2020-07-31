//
//  WorkoutCell.h
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 7/29/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WorkoutCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *workoutImage;
@property (weak, nonatomic) IBOutlet UILabel *workoutLabel;

@end

NS_ASSUME_NONNULL_END
