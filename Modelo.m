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
    
    NSMutableDictionary * tallerMecanico1 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"MSM pereira", @"telefono": @"3156105532", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico2 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"tecnicentro", @"telefono": @"3154315809", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico3 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Motos Pereira", @"telefono": @"3116077165", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico4 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Multimotos Ltda", @"telefono": @"3340788", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico5 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"KAWA MOTOS", @"telefono": @"3250589", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico6 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"RAIJON MOTORS", @"telefono": @"3348394", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico7 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"Moto Center", @"telefono": @"3332884", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico8 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"MOTOTRÉBOL", @"telefono": @"3272404", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    NSMutableDictionary * tallerMecanico9 = [[NSMutableDictionary alloc] initWithDictionary:@{@"nombre":@"recti motos", @"telefono": @"3251215", @"lat": @"34,8769", @"lon": @"-34,8769"}];
    
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
