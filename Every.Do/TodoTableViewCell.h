//
//  TodoTableViewCell.h
//  Every.Do
//
//  Created by Tyson Parks on 2/27/18.
//  Copyright © 2018 Tyson Parks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TodoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *todoTitle;
@property (weak, nonatomic) IBOutlet UILabel *todoPriority;
@property (weak, nonatomic) IBOutlet UIButton *todoCompleted;

@end
