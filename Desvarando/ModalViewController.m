//
//  ModalViewController.m
//  Desvarando
//
//  Created by Usuario Mac on 17/04/15.
//  Copyright (c) 2015 Yeison Restrepo. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)closeModdal:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
