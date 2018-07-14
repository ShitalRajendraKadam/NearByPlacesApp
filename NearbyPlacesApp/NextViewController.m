//
//  NextViewController.m
//  NearbyPlacesApp
//
//  Created by Student P_02 on 09/07/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Latitude=%f Longitude=%f",self.latitude,self.longitude);
    self.ListOfTypesArray=@[@"airport",@"amusement_park",@"aquarium",@"art_gallery",@"atm",@"bakery",@"bank",@"bar",@"beauty_salon",@"bicycle_store",@"book_store",@"bowling_alley",@"bus_station",@"cafe",@"campground",@"car_dealer",@"car_rental",@"car_repair",@"car_wash",@"casino",@"cemetery",@"church",@"city_hall",@"clothing_store",@"convenience_store",@"courthouse",@"dentist",@"department_store",@"doctor",@"electrician",@"electronics_store",@"embassy",@"fire_station",@"florist",@"funeral_home",@"furniture_store",@"gas_station",@"gym",@"hair_care",@"hardware_store",@"hindu_temple",@"home_goods_store",@"hospital",@"insurance_agency",@"jewelry_store",@"laundry",@"lawyer",@"library",@"liquor_store",@"local_government_office",@"locksmith",@"lodging",@"meal_delivery",@"meal_takeaway",@"mosque",@"movie_rental",@"movie_theater",@"moving_company",@"museum",@"night_club",@"painter",@"park",@"parking",@"pet_store",@"pharmacy",@"physiotherapist",@"plumber",@"police",@"post_office",@"real_estate_agency",@"restaurant",@"roofing_contractor",@"rv_park",@"school",@"shoe_store",@"shopping_mall",@"spa",@"stadium",@"storage",@"store",@"subway_station",@"supermarket",@"synagogue",@"taxi_stand",@"train_station",@"transit_station",@"travel_agency",@"veterinary_care",@"zoo" ];
    
    // Do any additional setup after loading the view.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.ListOfTypesArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    cell.textLabel.text=[self.ListOfTypesArray objectAtIndex:indexPath.row];
    cell.textLabel.font=[UIFont systemFontOfSize:25.0];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];

 NextViewController1 *next=[self.storyboard instantiateViewControllerWithIdentifier:@"NextViewController1"];
    next.latitude22=self.latitude;
    next.longitude22=self.longitude;
    NSLog(@"Latitude=%f Longitude=%f",next.latitude22,next.longitude22);

    self.SelectedListType=cell.textLabel.text;
    next.SelectedListType22=self.SelectedListType;
    [self.navigationController pushViewController:next animated:YES];
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

@end
