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
    
    MisPuntos * taller0 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:0] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.814783, -75.703196)];
    
    
    MisPuntos * taller1 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:1] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.811297, -75.690300)];
    
    MisPuntos * taller2 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:2] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.807791, -75.684420)];
    
    MisPuntos * taller3 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:3] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.808518, -75.705041)];
    
    MisPuntos * taller4 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:4] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.806016, -75.694892)];
    
    MisPuntos * taller5 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:5] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.808881, -75.714740)];
    
    MisPuntos * taller6 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:6] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.819914, -75.709440)];
    
    MisPuntos * taller7 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:7] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.815659, -75.720233)];
    
    MisPuntos * taller8 = [[MisPuntos alloc] initWithTitle:[[_talleres objectAtIndex:8] objectForKey:@"nombre"] subtitle:[[_talleres objectAtIndex:0] objectForKey:@"direccion"] andCoordinate: CLLocationCoordinate2DMake(4.819679, -75.709418)];
    
   
   
    
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
    
   
    
    MKCoordinateRegion zonaZoom = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 8000, 8000);
    
    [_mapa setRegion:zonaZoom animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
