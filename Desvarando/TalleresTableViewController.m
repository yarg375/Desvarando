//
//  TalleresTableViewController.m
//  Desvarando
//
//  Created by Usuario Mac on 17/04/15.
//  Copyright (c) 2015 Yeison Restrepo. All rights reserved.
//

#import "TalleresTableViewController.h"
#import "Modelo.h"
#import "CeldaTallerTableViewCell.h"

@interface TalleresTableViewController ()

@end

@implementation TalleresTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    _talleres = [[Modelo sharedInstance] Datos];
    
    NSLog(@"%@ Hola",_talleres);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [_talleres count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    static NSString * nombreCelda = @"celdaTaller";
    
    CeldaTallerTableViewCell * celda = [tableView dequeueReusableCellWithIdentifier:nombreCelda forIndexPath:indexPath];

    celda.nombreTaller.text = [[_talleres objectAtIndex:indexPath.row] objectForKey:@"nombre"];
    celda.direccionTaller.text = [[_talleres objectAtIndex:indexPath.row]objectForKey:@"direccion"];
 
    return celda;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat result;
    result = 80.0f;
    return result;
}


@end
