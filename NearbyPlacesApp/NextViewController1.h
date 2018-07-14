//
//  NextViewController1.h
//  NearbyPlacesApp
//
//  Created by Student P_02 on 09/07/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NextViewController2.h"
#define KEY "AIzaSyCqSnFsma6G-3Y3-BaAhby6pZea616DyIU"
//https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&rankby=distance&type=atm&key=AIzaSyCqSnFsma6G-3Y3-BaAhby6pZea616DyIU
@interface NextViewController1 : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property float latitude22;
@property float longitude22;
@property NSString *SelectedListType22;
@property NSMutableArray *SelectedTypeListArray;
@property (weak, nonatomic) IBOutlet UITableView *myTableView1;
@property NSMutableArray *AddressDidc;
@property NSString *AddressString1;
@end
