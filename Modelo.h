//
//  Modelo.h
//  Desvarando
//
//  Created by Usuario Mac on 17/04/15.
//  Copyright (c) 2015 Yeison Restrepo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Modelo : NSObject


@property (nonatomic, retain) NSMutableArray * talleres;

+(Modelo *) sharedInstance;
- (NSMutableArray *) Datos;



@end
