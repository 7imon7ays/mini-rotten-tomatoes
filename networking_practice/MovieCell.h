//
//  MovieCell.h
//  networking_practice
//
//  Created by Simon Chaffetz on 4/25/14.
//  Copyright (c) 2014 Simon Chaffetz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *thumnailImage;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end
