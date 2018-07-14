//
//  NextViewController.h
//  NearbyPlacesApp
//
//  Created by Student P_02 on 09/07/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NextViewController1.h"

@interface NextViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property NSArray *ListOfTypesArray;
@property float latitude;
@property float longitude;
@property NSString *SelectedListType;
@end
