//
//  DetailsViewController.h
//  ProyectoIos
//
//  Created by ACAMPOS on 24/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Color.h"

@interface DetailsViewController : UIViewController

@property (nonatomic,strong)Color *colorDetalle;

@property (weak, nonatomic) IBOutlet UIImageView *imagenColor;
@property (weak, nonatomic) IBOutlet UILabel *labelCodigo;
@property (weak, nonatomic) IBOutlet UILabel *labelSubtipo;
@property (weak, nonatomic) IBOutlet UILabel *labelPintura;
@property (weak, nonatomic) IBOutlet UILabel *labelEspesorAluminio;
@property (weak, nonatomic) IBOutlet UILabel *labelEspesorTotal;
@property (weak, nonatomic) IBOutlet UILabel *labelAncho;
@property (weak, nonatomic) IBOutlet UILabel *labelLargo;
@property (weak, nonatomic) IBOutlet UILabel *labelTipo;
@property (weak, nonatomic) IBOutlet UILabel *labelFecha;
@property (weak, nonatomic) IBOutlet UILabel *labelColor;

@end
