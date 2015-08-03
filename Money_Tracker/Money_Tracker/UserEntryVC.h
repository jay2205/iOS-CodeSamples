//
//  UserEntryVC.h
//  Money_Tracker
//
//  Created by Jayanth Devulapally on 4/26/15.
//  Copyright (c) 2015 KM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeTabBar.h"


@interface UserEntryVC : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *userAmount;
- (IBAction)addUser:(id)sender;

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *amount;
@property (strong, nonatomic) NSMutableDictionary *myDictionary;
@property (strong, nonatomic) NSString *plistPath;

@end
