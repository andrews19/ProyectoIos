//
//  CollectionColoresController.m
//  ProyectoIos
//
//  Created by ACAMPOS on 23/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
// Ayuda: http://stackoverflow.com/questions/4962561/set-uiimageview-image-using-a-url =)

#import "CollectionColoresController.h"
#import "CeldaView.h"
#import "Services.h"
#import "Color.h"
#import "AppDelegate.h"
#import "DetailsViewController.h"
#import "ARSPopover.h"

@interface CollectionColoresController ()

@end

@implementation CollectionColoresController

static NSString * const reuseIdentifier = @"Celda";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.topItem.title = @"Colores";

    if (self.esFiltro == 1) { //es 1
        
    } else {
        Services *service = [[Services alloc]init];
        
        self.arrayColores = [NSMutableArray array];
        self.arrayColores = [service getColorsTwo]; //Consumiendo el servicio
        
        if ([self.arrayColores count] == 0) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sin Datos"
                                                            message:@"Revise su conexión a Internet."
                                                           delegate:self
                                                  cancelButtonTitle:@"Aceptar"
                                                  otherButtonTitles:nil];
            [alert show];
        }

    }
    
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.arrayColores.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    

    CeldaView *celda = [collectionView dequeueReusableCellWithReuseIdentifier:@"Celda" forIndexPath:indexPath];
    
    Color *color = self.arrayColores[indexPath.row];
    celda.nombreColor.text = color.color;
    
    
    NSString *imageUrl = [NSString stringWithFormat:@"http://alucomex.com/images/colores/%@",color.imagen];
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:imageUrl]] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        celda.imagenColor.image = [UIImage imageWithData:data];
    }];
    
    return celda;
}



- (IBAction)filtrarPorTipo:(id)sender {
    ARSPopover *popoverController = [[ARSPopover alloc] init];
    popoverController.sourceView = self.botonFiltrar;
    popoverController.sourceRect = CGRectMake(CGRectGetMidX(self.botonFiltrar.bounds), CGRectGetMaxY(self.botonFiltrar.bounds), 0, 0);
    popoverController.contentSize = CGSizeMake(150, 93);
    popoverController.arrowDirection = UIPopoverArrowDirectionUp;
    popoverController.arregloColores = self.arrayColores;
    popoverController.esCreditos = 0;
    [self presentViewController:popoverController animated:YES completion:nil];

}

- (IBAction)verCreditos:(id)sender {
    ARSPopover *popoverController = [[ARSPopover alloc] init];
    popoverController.sourceView = self.botonCreditos;
    popoverController.sourceRect = CGRectMake(CGRectGetMidX(self.botonCreditos.bounds), CGRectGetMaxY(self.botonCreditos.bounds), 0, 0);
    popoverController.contentSize = CGSizeMake(150, 195);
    popoverController.arrowDirection = UIPopoverArrowDirectionUp;
    popoverController.esCreditos = 1;
    
    [self presentViewController:popoverController animated:YES completion:nil];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    DetailsViewController *detalle = [[DetailsViewController alloc]init];
    detalle.colorDetalle = [self.arrayColores objectAtIndex:indexPath.row];
    
    [self.navigationController pushViewController:detalle animated:YES];
}


@end
