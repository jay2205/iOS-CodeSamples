//
//  DetailViewController.m
//  ohio_beauty
//
//  Created by Jayanth Devulapally on 12/3/14.
//  Copyright (c) 2014 Jayanth. All rights reserved.
//

#import "DetailViewController.h"
#import "PlaceDetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UITableView *placesList;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item



- (void)configureView {
    [self.placesList registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma datasource methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.city.places.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    PlaceDetails * placeDetails = self.city.places[indexPath.row];
    cell.textLabel.text = placeDetails.placeName;
    return cell;
}

#pragma delegate methods
- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    PlaceDetailViewController *placeVC = (PlaceDetailViewController *) [mainStoryBoard instantiateViewControllerWithIdentifier:@"PlaceDetailViewController"];
   
    placeVC.placeDetails = self.city.places[indexPath.row];
    
    [self.navigationController pushViewController:placeVC animated:YES];
}

@end
