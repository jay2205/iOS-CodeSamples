//
//  FirstViewController.h
//  Money_Tracker
//
//  Created by Jayanth Devulapally on 4/25/15.
//  Copyright (c) 2015 KM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *userTable;
- (IBAction)addUser:(id)sender;
@property (strong, nonatomic) NSArray *rowDetail;
@end

