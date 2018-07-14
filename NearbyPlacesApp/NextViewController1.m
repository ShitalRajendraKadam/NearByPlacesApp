//
//  NextViewController1.m
//  NearbyPlacesApp
//
//  Created by Student P_02 on 09/07/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import "NextViewController1.h"

@interface NextViewController1 ()

@end

@implementation NextViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.SelectedTypeListArray=[[NSMutableArray alloc]init];
    self.AddressDidc=[[NSMutableArray alloc]init];

    NSLog(@"Latitude=%f Longitude=%f",self.latitude22,self.longitude22);

    NSLog(@"%@",self.SelectedListType22);
    [self NearbyPlacesJson];
    // Do any additional setup after loading the view.
}
-(void)NearbyPlacesJson
{
    NSString *str=[NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=%f,%f&radius=1500&type=%@&key=%s",self.latitude22,self.longitude22,self.SelectedListType22,KEY];
    NSLog(@"%@",str);
    
    NSURL *myurl=[NSURL URLWithString:str];
    NSURLSession *session=[NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURLSessionDataTask *dataTask=[session dataTaskWithURL:myurl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //code
        NSHTTPURLResponse *myResponse=(NSHTTPURLResponse *)response;
        if(myResponse.statusCode==200)
        {
            NSLog(@"Response Found");
            if(data)
            {
                NSDictionary *maindic=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
                
                NSArray *myresultArray=[maindic valueForKey:@"results"];
                
for(NSDictionary *temp in myresultArray)
{
                NSString *Name=[temp valueForKey:@"name"];
                NSLog(@"Name=%@",Name);
                [self.SelectedTypeListArray addObject:Name];
    NSString *Address=[temp valueForKey:@"vicinity"];
    NSLog(@"Address=%@",Address);
    [self.AddressDidc addObject:Address];
}               if(error)
                {
                    NSLog(@"Error : %@ ",error.localizedDescription);
                }
                else
                {
                    
                    NSLog(@"Name :%@",self.SelectedTypeListArray);
                    [self.myTableView1 reloadData];
                }
            }
            else
            {
                NSLog(@"Response not Found");
                
            }
            
        }
        
    }];
    [dataTask resume];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.SelectedTypeListArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    cell.textLabel.font=[UIFont systemFontOfSize:20.0];

    cell.textLabel.text=[self.SelectedTypeListArray objectAtIndex:indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    
    NextViewController2 *next=[self.storyboard instantiateViewControllerWithIdentifier:@"NextViewController2"];
    cell.textLabel.text=[self.AddressDidc objectAtIndex:indexPath.row];

    self.AddressString1=cell.textLabel.text;
    next.AddressString2=self.AddressString1;
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
