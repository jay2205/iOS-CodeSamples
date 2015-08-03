//
//  MasterViewController.m
//  ohio_beauty
//
//  Created by Jayanth Devulapally on 12/3/14.
//  Copyright (c) 2014 Jayanth. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "CityDetails.h"
#import "PlaceDetails.h"

@interface MasterViewController ()

@property NSMutableArray *cities; //creating a array to store the cityDetails object.
@end


@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cities = [[NSMutableArray alloc] init]; //allocating and initilising the array
    
    
    //Clevland
    //working with CityDetails Objects
    //city1
    CityDetails * city1 = [[CityDetails alloc] init]; //creating city1 object for CityDetails
    city1.cityName = @"Cleveland"; //adding the city name
    
    //working with PlaceDetails objects
    //place1
    PlaceDetails *place1 = [[PlaceDetails alloc] init];//creating the place1 object for PlaceDetails
    place1.placeName = @"Cleveland Orchestra at Severance Hall";//adding the placename
    place1.placeDescription = @"The Cleveland Orchestra is one of the most acclaimed performing ensembles in the world.  In concerts at home, in residencies from Miami to Vienna, and on tour around the world, The Cleveland Orchestra sets standards of artistic excellence, concert programming, and community engagement.";//adding the place description.
    place1.placeImages = @"cl1.jpg";
    place1.placeImgURL=@"http://bit.ly/1q3tPzL";
    
    //place2
    PlaceDetails *place2 = [[PlaceDetails alloc] init];
    place2.placeName = @"Cleveland Museum of Art";
    place2.placeDescription = @"The Cleveland Museum of Art (CMA) is an art museum situated in the Wade Park District, in the University Circle neighborhood on Cleveland's east side. Internationally renowned for its substantial holdings of Asian and Egyptian art, the museum houses a diverse permanent collection of more than 43,000 works of art from around the world.[2][3] The museum has remained historically true to the vision of its founders, keeping general admission free to the public and with a $600 million endowment it is one of the wealthiest in the nation.";
    place2.placeImages = @"cl2.jpg";
    place2.placeImgURL=@"http://bit.ly/1rXzvwA";
    
    //adding the place details to place array of city details
    city1.places = [[NSMutableArray alloc] init];//allocating and initilizing the place array of city details
    [city1.places addObject:place1];//adding place1 onject to place array of city details
    [city1.places addObject:place2];//adding place2 object to place array of city details
    [self.cities addObject:city1];//adding city1 to cities array of current class
    
    //Dayton
    //creating city2 object
    CityDetails * city2 = [[CityDetails alloc] init];
    city2.cityName = @"Dayton";
    
    //working with place details object
    //place11
    PlaceDetails *place11 = [[PlaceDetails alloc] init];
    place11.placeName = @"Dayton Aviation Heritage National Historic Park";
    place11.placeDescription = @"he Dayton Aviation Heritage National Historic Park examines the history of the Wright Brothers and their contributions to the field of flight. It also commemorates the Ohio born poet, Paul Laurence Dunbar. On site are the Wright Cycle Company building, Hoover Block, Huffman Prairie Flying Field, the Hawthorn Hill mansion, the Paul Laurence Dunbar State Memorial, and the first airplane, the 1905 Wright Flyer III.";
    place11.placeImages = @"da1.jpg";
    place11.placeImgURL=@"http://bit.ly/1ynIBPI";
    
    //place12
    PlaceDetails *place12 = [[PlaceDetails alloc] init];
    place12.placeName = @"National Museum of the U.S. Air Force";
    place12.placeDescription = @"The National Museum of the US Air Force, located in Dayton, prides itself on being the largest and oldest military museum in the world. The museum explores the history of aviation and displays hundreds of aerospace vehicles and missiles. The museum offers tours of the facility, some of which allow visitors to see restoration projects in the works.";
    place12.placeImages = @"da2.jpg";
    place12.placeImgURL=@"http://bit.ly/1yp6prF";
    
    //adding the place details to the place array of city details
    city2.places = [[NSMutableArray alloc] init];//allocating and initizing the place array of city deatils
    [city2.places addObject:place11];//adding place11 to the place array
    [city2.places addObject:place12];//adding place12 to the place array
    [self.cities addObject:city2];//adding city2 to the cities array of current class
    
    
    //Columbus
    //creating city3 object
    CityDetails * city3 = [[CityDetails alloc] init];
    city3.cityName =@"Columbus";
    //working with place details object
    //place21
    PlaceDetails * place21 =[[PlaceDetails alloc] init];
    place21.placeName=@"Columbus Zoo and Aquarium";
    place21.placeDescription=@"The Columbus Zoo and Aquarium is a non-profit zoo located in Powell, Ohio, just north of Columbus. The land lies along the eastern banks of the O'Shaughnessy Reservoir on the Scioto River, at the intersection of Riverside Drive and Powell Road";
    place21.placeImages=@"co1.jpg";
    place21.placeImgURL=@"http://bit.ly/1yp6DPs";
    
    //place22
    PlaceDetails * place22 = [[PlaceDetails alloc]init];
    place22.placeName =@"Columbus Museum of Art";
    place22.placeDescription=@"The Columbus Museum of Art is an art museum located in downtown Columbus, Ohio. Formed in 1878 as the Columbus Gallery of Fine Arts, it was the first art museum to register its charter with the state of Ohio.";
    place22.placeImages=@"co2.jpg";
    place22.placeImgURL=@"http://bit.ly/12K9CVE";
    
    //adding place details to place array of pf city details
    city3.places =[[NSMutableArray alloc]init];
    [city3.places addObject:place21];
    [city3.places addObject:place22];
    [self.cities addObject:city3];//adding citydetails object to the cities array of current class
    
    //Cincinnati
    //city4
    CityDetails *city4 = [[CityDetails alloc]init];//creating object for city details
    city4.cityName=@"Cincinnati";
    //working with place details object
    //place31
    PlaceDetails *place31 = [[PlaceDetails alloc]init];
    place31.placeName=@"Cincinnati Zoo and Botanical Garden";
    place31.placeDescription=@"The Cincinnati Zoo and Botanical Garden is the second oldest zoo in the United States and is located in Cincinnati, Ohio. It opened in 1875, just 14 months after the Philadelphia Zoo on July 1, 1874.";
    place31.placeImages=@"ci1.jpg";
    place31.placeImgURL=@"http://bit.ly/1z4SNka";
    
    //place32
    PlaceDetails *place32 =[[PlaceDetails alloc]init];
    place32.placeName=@"Coney Island";
    place32.placeDescription=@"Coney Island is a small amusement park and waterpark located in Cincinnati, Ohio and Anderson Township, on the banks of the Ohio River 10 miles east of Downtown Cincinnati. The park is currently owned by Brenda Walker.";
    place32.placeImages=@"ci2.jpg";
    place32.placeImgURL=@"http://bit.ly/1votALr";
    
    
    //adding place setails to the place array of the city details class
    city4.places =[[NSMutableArray alloc]init];
    [city4.places addObject:place31];
    [city4.places addObject:place32];
    [self.cities addObject:city4];
    
    //Akron
    //city5
    CityDetails *city5 =[[CityDetails alloc]init];
    city5.cityName=@"Akron";
    //place41
    PlaceDetails *place41 = [[PlaceDetails alloc]init];
    place41.placeName=@"Stan Hywet Hall and Gardens";
    place41.placeDescription=@"Stan Hywet Hall & Gardens is a notable country estate, with gardens, located at 714 North Portage Path in Akron, Ohio. It is one of the largest homes in the U.S. on the list of largest houses in the United States.";
    place41.placeImages=@"ak1.jpg";
    place41.placeImgURL=@"http://bit.ly/1rXAe0G";
    
    //place42
    PlaceDetails *place42= [[PlaceDetails alloc]init];
    place42.placeName=@"Firestone Country Club";
    place42.placeDescription=@"The Firestone Country Club is a private golf club in the United States, located in Akron, Ohio. It is a regular stop on the PGA Tour and has hosted the PGA Championship three times.";
    place42.placeImages=@"ak2.jpg";
    place42.placeImgURL=@"http://bit.ly/1G1pvVB";
    
    
    //adding places to the places array of city details class
    city5.places =[[NSMutableArray alloc]init];
    [city5.places addObject:place41];
    [city5.places addObject:place42];
    [self.cities addObject:city5];
    
    //Toledo
    //City6
    CityDetails *city6 =[[CityDetails alloc]init];
    city6.cityName=@"Toledo";
    //place51
    PlaceDetails *place51 =[[PlaceDetails alloc]init];
    place51.placeName=@"Imagination Station";
    place51.placeDescription=@"Imagination Station is a non-profit, hands-on science museum located on the riverfront in downtown Toledo, Ohio. The facility has over 300 exhibits for children of all ages.";
    place51.placeImages=@"tl1.jpg";
    place51.placeImgURL=@"http://bit.ly/12KaZn7";
    
    //place52
    PlaceDetails *place52 =[[PlaceDetails alloc]init];
    place52.placeName=@"Valentine Theatre";
    place52.placeDescription=@"The Valentine Theatre is located in Downtown Toledo, Ohio at the corner of Superior and Adams. The facility is 119 years old and has 901 seats. It is operated by the Toledo Cultural Arts Center, Inc";
    place52.placeImages=@"tl2.jpg";
    place52.placeImgURL=@"http://bit.ly/1vou0l4";
    
    city6.places =[[NSMutableArray alloc]init];
    [city6.places addObject:place51];
    [city6.places addObject:place52];
    [self.cities addObject:city6];
}


//using segues to tramiting the dataa

#pragma mark - Segues
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];//taking the current selected index path
        CityDetails *cityDetails = self.cities[indexPath.row];//taking the city from selected index path form the cities array
        DetailViewController *detailVC = [segue destinationViewController];//making details VC as destion view controller to the segue
        
        detailVC.city = cityDetails;//city--> reffrence to the city details class in detail view controller
    }
}


#pragma mark - Table View
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cities.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    CityDetails *cityDetails = self.cities[indexPath.row];
    cell.textLabel.text = cityDetails.cityName;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

@end
