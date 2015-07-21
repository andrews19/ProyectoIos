//
//  Color.h
//  ProyectoIos
//
//  Created by ACAMPOS on 21/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Color : NSObject
@property (nonatomic, strong) NSString *id_color;
@property (nonatomic, strong) NSString *color;
@property (nonatomic, strong) NSString *codigo;
@property (nonatomic, strong) NSString *id_tipo;
@property (nonatomic, strong) NSString *id_subtipo;
@property (nonatomic, strong) NSString *pintura;
@property (nonatomic, strong) NSString *espesor_aluminio;
@property (nonatomic, strong) NSString *espesor_total;
@property (nonatomic, strong) NSString *ancho;
@property (nonatomic, strong) NSString *largo;
@property (nonatomic, strong) NSString *imagen;
@property (nonatomic, strong) NSString *imagen_detalle;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, strong) NSString *fecha_registro;
/*
id_color : "20"
color : "Vino / Wine"
codigo : "WNE"
id_tipo : "Básicos"
id_subtipo : "Solidos"
pintura : "PVDF"
espesor_aluminio : "0,35 mm"
espesor_total : "4 mm"
ancho : "1,55 m"
largo : "5.55 m"
imagen : "WINE-vino-low.jpg"
imagen_detalle : "WNE-vino.jpg"
status : "1"
fecha_registro : "2015-05-18"
*/
 @end
