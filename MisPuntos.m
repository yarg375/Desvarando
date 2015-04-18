//
//  MisPuntos.m
//  Desvarando
//
//  Created by Usuario Mac on 18/04/15.
//  Copyright (c) 2015 Yeison Restrepo. All rights reserved.
//

#import "MisPuntos.h"

@implementation MisPuntos



- (id)initWithTitle:(NSString *)aTitle subtitle:(NSString*)aSubtitle andCoordinate:(CLLocationCoordinate2D)coord
{
    self = [super init];
    _nombre = aTitle;
    _direccion = aSubtitle;
    _coordinate = coord;
    return self;
}



@end
