//
//  BDViewController.m
//  LocationTest
//
//  Created by Kiattisak on 10/16/55 BE.
//  Copyright (c) 2555 Kiattisak. All rights reserved.
//

#import "BDViewController.h"

@interface BDViewController ()

@end

@implementation BDViewController {
    CLLocationManager *locationManager;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager startUpdatingLocation];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    if (locations) {
        CLLocation *currentLocation = locations[0];
        self.latitudeLabel.text = [NSString stringWithFormat:@"%f", currentLocation.coordinate.latitude];
        self.longtitudeLabel.text = [NSString stringWithFormat:@"%f", currentLocation.coordinate.longitude];
        [locationManager stopUpdatingLocation];
    } else {
        [locationManager startUpdatingLocation];
    }
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"Fetch Location Error Because: %@", error.userInfo);
}

@end
