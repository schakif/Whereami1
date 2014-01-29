//
//  WhereAmIViewController.m
//  WhereAmI
//
//  Created by Steve Chakif on 1/27/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import "WhereAmIViewController.h"

@interface WhereAmIViewController ()

@end

@implementation WhereAmIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    locationManager = [[CLLocationManager alloc] init];
    [locationManager setDelegate:self];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [locationManager startUpdatingLocation];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    CLLocation *location = [locations objectAtIndex:0];
    NSLog(@"%@", [location description]);
}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"Could not find the location %@", [error localizedDescription]);
}

@end
