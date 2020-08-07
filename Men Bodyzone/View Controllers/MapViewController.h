//
//  MapViewController.h
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 8/6/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapPin.h"

NS_ASSUME_NONNULL_BEGIN

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
    
    CLLocationManager *locationManager;
    
}



@property (weak, nonatomic) IBOutlet MKMapView *mapView;


- (IBAction)hybrid:(id)sender;
- (IBAction)satelite:(id)sender;
- (IBAction)standard:(id)sender;

- (IBAction)directions:(id)sender;

- (IBAction)locate:(id)sender;


@end

NS_ASSUME_NONNULL_END
