//
//  ViewController.h
//  CM-Final
//
//  Created by 0x00 on 20/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface Start : UIViewController <CLLocationManagerDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tblStart;
@property (strong, nonatomic)   CLLocationManager   *locationManager;
@property (strong, nonatomic)   CLLocation          *location;

@end

