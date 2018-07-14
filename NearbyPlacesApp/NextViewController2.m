//
//  NextViewController2.m
//  NearbyPlacesApp
//
//  Created by Student P_02 on 11/07/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import "NextViewController2.h"

@interface NextViewController2 ()

@end

@implementation NextViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.AddressLabel.text=self.AddressString2;
    // Do any additional setup after loading the view.
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
