//
//  MapViewController.m
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 8/6/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 34.0093514999999;
    location.longitude = -118.49746820000001;
    
    region.span = span;
    region.center = location;
    
    [self.mapView setRegion:region animated:YES];
    
    MapPin *ann = [[MapPin alloc] init];
    ann.coordinate = location;
    [self.mapView addAnnotation:ann];
    
    locationManager.delegate = self;
    self.mapView.delegate = self;
    locationManager = [[CLLocationManager alloc] init];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)locate:(id)sender {
    
    [locationManager requestWhenInUseAuthorization];
    [locationManager requestAlwaysAuthorization];
    
    [locationManager startUpdatingLocation];
    
    self.mapView.showsUserLocation = YES;
    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    
    MKCoordinateRegion region;
       MKCoordinateSpan span;
       
       span.latitudeDelta = 0.005;
       span.longitudeDelta = 0.005;
       
       CLLocationCoordinate2D location;
       
    location.latitude = userLocation.coordinate.latitude;
       location.longitude = userLocation.coordinate.longitude;
       
       region.span = span;
       region.center = location;
       
       [self.mapView setRegion:region animated:YES];
       
}

- (IBAction)directions:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=34.0093514999999, -118.49746820000001"] options:@{} completionHandler:nil];
}

- (IBAction)standard:(id)sender {
    
    self.mapView.mapType = MKMapTypeStandard;
}

- (IBAction)satelite:(id)sender {
    
    self.mapView.mapType = MKMapTypeSatellite;
}

- (IBAction)hybrid:(id)sender {
    
    self.mapView.mapType = MKMapTypeHybrid;
}
@end
