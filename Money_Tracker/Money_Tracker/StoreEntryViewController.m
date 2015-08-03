//
//  StoreEntryViewController.m
//  Money_Tracker
//
//  Created by Jayanth Devulapally on 4/26/15.
//  Copyright (c) 2015 KM. All rights reserved.
//

#import "StoreEntryViewController.h"

@interface StoreEntryViewController ()

@end

@implementation StoreEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.store = [[NSString alloc]init];
    self.amount = [[NSString alloc]init];
    self.plistPath = [[NSString alloc]init];
    self.plistPath = [[NSBundle mainBundle] pathForResource:@"store" ofType:@"plist"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)addStore:(id)sender {
    self.store = self.storeName.text;
    self.amount = self.storeAmount.text;
    NSArray *detailArray = [[NSArray alloc] initWithObjects:self.amount,self.store, nil];
    self.myDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:self.plistPath];
    NSInteger count = [self.myDictionary count];
    NSString *user = [NSString stringWithFormat:@"store_%ld",(long)count];
    [self.myDictionary setObject:(id)detailArray forKey:user];
    [self.myDictionary writeToFile:self.plistPath atomically:YES];
    self.tabBarController.selectedIndex =2;

}
@end
