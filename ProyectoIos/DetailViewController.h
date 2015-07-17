//
//  DetailViewController.h
//  ProyectoIos
//
//  Created by ACAMPOS on 17/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

