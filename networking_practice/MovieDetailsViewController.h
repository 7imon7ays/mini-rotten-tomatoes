//
//  MovieDetailsViewController.h
//  networking_practice
//
//  Created by Simon Chaffetz on 4/25/14.
//  Copyright (c) 2014 Simon Chaffetz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieDetailsViewController : UIViewController {
    NSDictionary *_movie;
}

- (MovieDetailsViewController *)initWithMovie:(NSDictionary *)movie;

@end
