//
//  MovieDetailsViewController.m
//  networking_practice
//
//  Created by Simon Chaffetz on 4/25/14.
//  Copyright (c) 2014 Simon Chaffetz. All rights reserved.
//

#import "MovieDetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterImage;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end

@implementation MovieDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.titleLabel.text = _movie[@"title"];
    self.synopsisLabel.text = _movie[@"synopsis"];
    NSString *imageUrlString = [_movie valueForKeyPath:@"posters.original"];
    NSURL *imageUrl = [NSURL URLWithString:imageUrlString];
    [self.posterImage setImageWithURL:imageUrl];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (MovieDetailsViewController *) initWithMovie:(NSDictionary *)movie {
    _movie = movie;
    return [super self];
}

@end
