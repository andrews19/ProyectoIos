//
//  WelcomeViewController.m
//  ProyectoIos
//
//  Created by ACAMPOS on 20/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
//

#import "WelcomeViewController.h"
#import "MasterViewController.h"



@interface WelcomeViewController ()

@end

@implementation WelcomeViewController
/*
-(instancetype)init {
    self = [super initWithNibName:@"WelcomeView" bundle:nil];
    if(self){
    }
    return self;
}*/
- (void)viewDidLoad {
    [super viewDidLoad];
    /*bool verdad=true;
    if (verdad) {
        <#statements#>
    }*/
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)siguiente:(id)sender {
   [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"IniciaPrimerVez"];
}
@end
