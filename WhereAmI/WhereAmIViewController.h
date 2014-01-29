//
//  WhereAmIViewController.h
//  WhereAmI
//
//  Created by Steve Chakif on 1/27/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>



@interface WhereAmIViewController : UIViewController <CLLocationManagerDelegate>{
    CLLocationManager *locationManager;
}

@end
