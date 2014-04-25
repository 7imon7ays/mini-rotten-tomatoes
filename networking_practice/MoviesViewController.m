//
//  MoviesViewController.m
//  networking_practice
//
//  Created by Simon Chaffetz on 4/25/14.
//  Copyright (c) 2014 Simon Chaffetz. All rights reserved.
//

#import "MoviesViewController.h"
#import "MovieCell.h"

@interface MoviesViewController ()
@property (weak, nonatomic) IBOutlet UITableView *moviesTableView;
@property (strong, nonatomic) NSArray *movies;

@end

@implementation MoviesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Movies";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.movies = @[@"One", @"Two", @"Three"];
    self.moviesTableView.delegate = self;
    self.moviesTableView.dataSource = self;

    [self.moviesTableView registerNib:[UINib nibWithNibName:@"MovieCell" bundle:nil] forCellReuseIdentifier:@"movieCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.movies.count;
}

- (MovieCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *movieTitle = self.movies[indexPath.row];
    MovieCell *movieCell = [self.moviesTableView dequeueReusableCellWithIdentifier:@"movieCell"];
    movieCell.titleLabel.text = movieTitle;
    return movieCell;
}

@end
