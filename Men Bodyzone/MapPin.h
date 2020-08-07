//
//  MapPin.h
//  Men Bodyzone
//
//  Created by Divine Uchechukwu Linus on 8/7/20.
//  Copyright © 2020 Divine Uchechukwu Linus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapPin : NSObject <MKAnnotation> {
    
    CLLocationCoordinate2D coordinate;
    
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

@end

NS_ASSUME_NONNULL_END
