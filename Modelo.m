//
//  Modelo.m
//  Desvarando
//
//  Created by Usuario Mac on 17/04/15.
//  Copyright (c) 2015 Yeison Restrepo. All rights reserved.
//

#import "Modelo.h"

@implementation Modelo

static Modelo * instance;


+(Modelo *) sharedInstance{
    
    if (instance==nil) {
        instance = [[Modelo alloc] init];
    }

    return instance;

}


- (NSMutableArray *) Datos{
    
    
    _talleres = [[NSMutableArray alloc] init];
    
    NSMutableDictionary * tallerMecanico1 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"MSM Pereira", @"direccion": @"3216789", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico2 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Tecnicentro", @"direccion": @"3275649", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico3 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Motos Pereira", @"direccion": @"3676534", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico4 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Multi Motos ltda", @"direccion": @"3264529", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico5 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Kawamotos", @"direccion": @"3297846", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico6 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Raijon ", @"direccion": @"3286534", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico7 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Car Center", @"direccion": @"3789076", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico8 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Trebol Car", @"direccion": @"3678906", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico9 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Recti Motos", @"direccion": @"3228976", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    
    [_talleres addObject:tallerMecanico1];
    [_talleres addObject:tallerMecanico2];
    [_talleres addObject:tallerMecanico3];
    [_talleres addObject:tallerMecanico4];
    [_talleres addObject:tallerMecanico5];
    [_talleres addObject:tallerMecanico6];
    [_talleres addObject:tallerMecanico7];
    [_talleres addObject:tallerMecanico8];
    [_talleres addObject:tallerMecanico9];
    
    
    return _talleres;
    
    
    
}


@end
