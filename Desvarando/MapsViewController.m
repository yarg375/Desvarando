//
//  MapsViewController.m
//  Desvarando
//
//  Created by Usuario Mac on 18/04/15.
//  Copyright (c) 2015 Yeison Restrepo. All rights reserved.
//

#import "MapsViewController.h"

@interface MapsViewController ()

@end

@implementation MapsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mapa.delegate = self;
    
    MisPuntos * pereira = [[MisPuntos alloc] initTalleres];
    
    [_mapa addAnnotation:pereira];
    
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    [_locationManager requestAlwaysAuthorization];
    
    
    [_mapa setShowsUserLocation:YES];
    
    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
    MKCoordinateRegion zonaZoom = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 300, 300);
    
    [_mapa setRegion:zonaZoom animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
