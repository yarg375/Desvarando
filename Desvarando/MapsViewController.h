//
//  MapsViewController.h
//  Desvarando
//
//  Created by Usuario Mac on 18/04/15.
//  Copyright (c) 2015 Yeison Restrepo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MisPuntos.h"

@interface MapsViewController : UIViewController <MKMapViewDelegate,CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapa;

@property CLLocationManager * locationManager;
@property (nonatomic, retain) NSMutableArray * talleres;

@end
