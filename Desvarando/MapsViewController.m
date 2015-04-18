//
//  MapsViewController.m
//  Desvarando
//
//  Created by Usuario Mac on 18/04/15.
//  Copyright (c) 2015 Yeison Restrepo. All rights reserved.
//

#import "MapsViewController.h"
#import "Modelo.h"


@interface MapsViewController ()

@end

@implementation MapsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mapa.delegate = self;
    
    _talleres = [[Modelo sharedInstance] Datos];
    
    NSLog(@"%@",[[_talleres objectAtIndex:0] objectForKey:@"nombre"]);
    
    MisPuntos * taller0 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:0] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.89121, -75.8846)];
    
    
    MisPuntos * taller1 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:1] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.85421, -75.9046)];
    
    MisPuntos * taller2 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:2] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.77921, -75.4346)];
    
    MisPuntos * taller3 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:3] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.83995, -75.6046)];
    
    MisPuntos * taller4 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:4] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.78087, -75.8746)];
    
    MisPuntos * taller5 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:5] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.81979, -75.7246)];
    
    MisPuntos * taller6 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:6] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.81790, -75.3646)];
    
    MisPuntos * taller7 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:7] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.65689, -75.6846)];
    
    MisPuntos * taller8 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:8] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.82478, -75.6946)];
    
   
   
    
    [_mapa addAnnotation:taller0];
    [_mapa addAnnotation:taller1];
    [_mapa addAnnotation:taller2];
    [_mapa addAnnotation:taller3];
    [_mapa addAnnotation:taller4];
    [_mapa addAnnotation:taller5];
    [_mapa addAnnotation:taller6];
    [_mapa addAnnotation:taller7];
    [_mapa addAnnotation:taller8];
    
    //[_mapa addAnnotation:pereira2];
    
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    [_locationManager requestAlwaysAuthorization];
    
    
    [_mapa setShowsUserLocation:YES];
    
    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
   
    
    MKCoordinateRegion zonaZoom = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 30000, 30000);
    
    [_mapa setRegion:zonaZoom animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
