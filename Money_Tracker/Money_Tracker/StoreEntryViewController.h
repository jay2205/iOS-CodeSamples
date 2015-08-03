//
//  StoreEntryViewController.h
//  Money_Tracker
//
//  Created by Jayanth Devulapally on 4/26/15.
//  Copyright (c) 2015 KM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoreEntryViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *storeName;
@property (strong, nonatomic) IBOutlet UITextField *storeAmount;
- (IBAction)addStore:(id)sender;

@property (strong, nonatomic) NSString *store;
@property (strong, nonatomic) NSString *amount;
@property (strong, nonatomic) NSMutableDictionary *myDictionary;
@property (strong, nonatomic) NSString *plistPath;
@end
