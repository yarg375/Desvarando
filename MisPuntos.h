//
//  MisPuntos.h
//  Desvarando
//
//  Created by Usuario Mac on 18/04/15.
//  Copyright (c) 2015 Yeison Restrepo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface MisPuntos : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly, copy) NSString * nombre;
@property (nonatomic, readonly, copy) NSString * direccion;

- (id)initWithTitle:(NSString *)aTitle subtitle:(NSString*)aSubtitle andCoordinate:(CLLocationCoordinate2D)coord;


@end
