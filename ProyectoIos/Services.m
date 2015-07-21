//
//  Services.m
//  ProyectoIos
//
//  Created by ACAMPOS on 21/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
//

#import "Services.h"
#import "Color.h"

@implementation Services

-(void)getColors{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://alucomex.com/es/api" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
       
        //NSDictionary *jsonDict = (NSDictionary *) [responseObject valueForKey:@"colores"];
        //NSLog(@"JSON 2: %@", jsonDict);
        //NSLog(@"JSON 2: %@", [responseObject valueForKey:@"colores"]);
        
        //NSArray *objetos =@{@"titles":@[@"Artist", @"Album", @"Genre", @"Year"];
                            
        NSArray *alertArray = [responseObject objectForKey:@"colores"];
        NSMutableArray *listaColores = [NSMutableArray array];
        for (NSDictionary *objeto in alertArray ){
            NSString* ancho = [objeto  objectForKey:@"ancho"];
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
            
            [listaColores addObject:col];
        
        }
        
        [listaColores count];
        
        
    
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    

}
@end
