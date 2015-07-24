//
//  Services.h
//  ProyectoIos
//
//  Created by ACAMPOS on 21/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface Services : NSObject

@property (nonatomic, strong) NSMutableArray *arrayColores;
-(NSMutableArray *)getColors;
- (NSData *)descargaImagen;
-(NSMutableArray *)getColorsTwo ;
@end
