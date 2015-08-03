//
//  DetailViewController.h
//  ohio_beauty
//
//  Created by Jayanth Devulapally on 12/3/14.
//  Copyright (c) 2014 Jayanth. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityDetails.h"
#import "PlaceDetails.h"

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property(strong,nonatomic) CityDetails* city;

@end

