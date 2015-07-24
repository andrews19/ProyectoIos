//
//  CollectionColoresController.h
//  ProyectoIos
//
//  Created by ACAMPOS on 23/07/15.
//  Copyright (c) 2015 Gonet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionColoresController : UICollectionViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic)int esFiltro;
@property (nonatomic, strong) NSMutableArray *arrayColores;

@property (weak, nonatomic) IBOutlet UIButton *botonFiltrar;
- (IBAction)filtrarPorTipo:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *botonCreditos;
- (IBAction)verCreditos:(id)sender;


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath ;
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section;
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView;



@end
