//
//  DetailsViewController.m
//  ProyectoIos
//
//  Created by ACAMPOS on 24/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

-(instancetype)init {
    self = [super initWithNibName:@"DetailsView" bundle:nil];
    if(self){
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    //self.navigationController.navigationBar.topItem. = @"Detalle";
    self.navigationItem.title = @"Detalles";
    Color *col = self.colorDetalle;
    
    NSString *imageUrl = [NSString stringWithFormat:@"http://alucomex.com/images/colores/%@",col.imagen_detalle];
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:imageUrl]] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        self.imagenColor.image = [UIImage imageWithData:data];
    }];
    
    self.labelCodigo.text = col.codigo;
    self.labelColor.text = col.color;
    self.labelSubtipo.text = col.id_subtipo;
    self.labelPintura.text = col.pintura;
    self.labelEspesorAluminio.text = col.espesor_aluminio;
    self.labelEspesorTotal.text = col.espesor_total;
    self.labelAncho.text = col.ancho;
    self.labelLargo.text = col.largo;
    self.labelTipo.text = col.id_tipo;
    self.labelFecha.text = col.fecha_registro;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
