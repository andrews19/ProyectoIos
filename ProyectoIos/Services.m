//
//  Services.m
//  ProyectoIos
//
//  Created by ACAMPOS on 21/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
//

#import "Services.h"
#import "Color.h"
#import <AFNetworking/AFNetworking.h>

@implementation Services



-(NSMutableArray *)getColorsTwo {
    
    self.arrayColores = [NSMutableArray array];
    
    
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",@"http://alucomex.com/es/api"]]];
    NSURLResponse * response = nil;
    NSError * error = nil;
    
    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest
                                          returningResponse:&response
                                                      error:&error];
    
    
    
    if (error == nil)
        
    {

        NSError* aux;
        
        NSDictionary* json  = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&aux];
        
        NSArray* alertArray = [json objectForKey:@"colores"];
        
        NSLog(@"loans: %@", alertArray);
        
        
        for (NSDictionary *objeto in alertArray ){
            //NSString* ancho = [objeto  objectForKey:@"ancho"];
            Color *col = [[Color alloc]init];
            col.id_color = [objeto objectForKey:@"id_color"];
            col.color = [objeto objectForKey:@"color"];
            col.codigo = [objeto objectForKey:@"codigo"];
            col.id_tipo = [objeto objectForKey:@"id_tipo"];
            col.id_subtipo = [objeto objectForKey:@"id_subtipo"];
            col.pintura = [objeto objectForKey:@"pintura"];
            col.espesor_aluminio = [objeto objectForKey:@"espesor_aluminio"];
            col.espesor_total = [objeto objectForKey:@"espesor_total"];
            col.ancho = [objeto objectForKey:@"ancho"];
            col.largo = [objeto objectForKey:@"largo"];
            col.imagen = [objeto objectForKey:@"imagen"];
            col.imagen_detalle = [objeto objectForKey:@"imagen_detalle"];
            col.status = [objeto objectForKey:@"status"];
            col.fecha_registro = [objeto objectForKey:@"fecha_registro"];
            
            [self.arrayColores addObject:col];
            
        }
        
    }
    return self.arrayColores;
}

-(NSMutableArray *)getColors {
    self.arrayColores = [NSMutableArray array];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager GET:@"http://alucomex.com/es/api" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
        
        NSLog(@"JSON BB: %@", responseObject);
        
        NSArray *alertArray = [responseObject objectForKey:@"colores"];
        for (NSDictionary *objeto in alertArray ){
            //NSString* ancho = [objeto  objectForKey:@"ancho"];
            Color *col = [[Color alloc]init];
            col.id_color = [objeto objectForKey:@"id_color"];
            col.color = [objeto objectForKey:@"color"];
            col.codigo = [objeto objectForKey:@"codigo"];
            col.id_tipo = [objeto objectForKey:@"id_tipo"];
            col.id_subtipo = [objeto objectForKey:@"id_subtipo"];
            col.pintura = [objeto objectForKey:@"pintura"];
            col.espesor_aluminio = [objeto objectForKey:@"espesor_aluminio"];
            col.espesor_total = [objeto objectForKey:@"espesor_total"];
            col.ancho = [objeto objectForKey:@"ancho"];
            col.largo = [objeto objectForKey:@"largo"];
            col.imagen = [objeto objectForKey:@"imagen"];
            col.imagen_detalle = [objeto objectForKey:@"imagen_detalle"];
            col.status = [objeto objectForKey:@"status"];
            col.fecha_registro = [objeto objectForKey:@"fecha_registro"];
            
            [self.arrayColores addObject:col];
        
        }
               
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    return self.arrayColores;
    
    /*
     Color *col = [[Color alloc]init];
    col.id_color = @"1";
    col.color = @"Plata Métalico / Silver Metallic";
    col.codigo = @"SMX";
    col.id_tipo = @"Básicos";
    col.id_subtipo = @"Metálicos";
    col.pintura = @"PVDF";
    col.espesor_aluminio = @"0.35 mm";
    col.espesor_total = @"4 mm";
    col.ancho = @"1,55 m / 1,27 m";
    col.largo = @"5.55 m";
    col.imagen = @"ihat9323868gscsggo.jpg";
    col.imagen_detalle = @"c8t5sjfuckgg88wgc.jpg";
    col.status = @"1";
    col.fecha_registro = @"2015-05-18";
    
    [self.arrayColores addObject:col];
    
    Color *col2 = [[Color alloc]init];
    col2.id_color = @"25";
    col2.color = @"Chocolate / Chocolate";
    col2.codigo = @"CHT";
    col2.id_tipo = @"Especiales";
    col2.id_subtipo = @"WOOD";
    col2.pintura = @"PVDF";
    col2.espesor_aluminio = @"0.35 mm";
    col2.espesor_total = @"4 mm";
    col2.ancho = @"1,55 m / 1,27 m";
    col2.largo = @"5.55 m";
    col2.imagen = @"CHT-chocolate-low.jpg";
    col2.imagen_detalle = @"CHT-chocolate.jpg";
    col2.status = @"1";
    col2.fecha_registro = @"2015-05-18";
    
    [self.arrayColores addObject:col2];
    
    Color *col3 = [[Color alloc]init];
    
    col3.id_color = @"48";
    col3.color = @"Verde Obscuro / Dark Green";
    col3.codigo = @"DGN";
    col3.id_tipo = @"Básicos";
    col3.id_subtipo = @"Solidos";
    col3.pintura = @"PVDF";
    col3.espesor_aluminio = @"0.35 mm";
    col3.espesor_total = @"4 mm";
    col3.ancho = @"1,55 m / 1,27 m";
    col3.largo = @"5.55 m";
    col3.imagen = @"DGN-verde-obscuro-low.jpg";
    col3.imagen_detalle = @"DGN-verde-obscuro.jpg";
    col3.status = @"1";
    col3.fecha_registro = @"2015-05-18";
    
    [self.arrayColores addObject:col];
    */
    //return self.arrayColores;
}

@end
