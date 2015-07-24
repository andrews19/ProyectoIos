

#import "ARSPopover.h"
#import "Color.h"
#import "CollectionColoresController.h"
#import "DetailsViewController.h"

@interface ARSPopover () <UIPopoverPresentationControllerDelegate>

@end




@implementation ARSPopover


@synthesize  button2;
@synthesize  button;
@synthesize  button3;
@synthesize  button4;

#pragma mark Initialization

- (instancetype)init {
          
    if (self = [super init]) {
        self.modalPresentationStyle = UIModalPresentationPopover;
        self.popoverPresentationController.delegate = self;
    }
    
    return self;
}
//-(void) viewDidAppear:(BOOL)animated{
//          int largo = 47*(self.cantidadAMostrar);
//          self.preferredContentSize = CGSizeMake(150, largo);
//}

#pragma mark - View Controller's Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
          
          if (self.esCreditos == 1) {
                    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                    UIColor *color=[UIColor blackColor];
                    UIColor *color1=[UIColor whiteColor];
                    
                    [button setTitle:@"Andrés Campos" forState:UIControlStateNormal];
                    [button center];
                    [button setFrame:CGRectMake(0, 25, 200, 44)];
                    //[button sizeToFit];
                    [button setCenter:CGPointMake(80, 20)];
                    [button setBackgroundColor:color];
                    [button setTintColor:color1];
                    
                    //popoverView.backgroundColor
                    [button addTarget:self action:@selector(closePopover) forControlEvents:UIControlEventTouchUpInside];
                    
                    
                    [self.view addSubview:button];
                    
                    button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                    [button2 setTitle:@"Antelmo Rosendo" forState:UIControlStateNormal];
                    [button2 center];
                    [button2 setFrame:CGRectMake(0, 25, 200, 44)];
                    //[button sizeToFit];
                    [button2 setCenter:CGPointMake(80, 70)];
                    [button2 setBackgroundColor:color];
                    [button2 setTintColor:color1];
                    
                    //popoverView.backgroundColor
                    [button2 addTarget:self action:@selector(closePopover) forControlEvents:UIControlEventTouchUpInside];
                    
                    
                    [self.view addSubview:button2];
                    
                    button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                    [button3 setTitle:@"Armando Lázaro" forState:UIControlStateNormal];
                    [button3 center];
                    [button3 setFrame:CGRectMake(0, 25, 200, 44)];
                    //[button sizeToFit];
                    [button3 setCenter:CGPointMake(80, 120)];
                    [button3 setBackgroundColor:color];
                    [button3 setTintColor:color1];
                    
                    //popoverView.backgroundColor
                    [button3 addTarget:self action:@selector(closePopover) forControlEvents:UIControlEventTouchUpInside];
                    
                    
                    [self.view addSubview:button3];
                    
                    
                    button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                    [button4 setTitle:@"Carlos García" forState:UIControlStateNormal];
                    [button4 center];
                    [button4 setFrame:CGRectMake(0, 25, 200, 44)];
                    //[button sizeToFit];
                    [button4 setCenter:CGPointMake(80, 170)];
                    [button4 setBackgroundColor:color];
                    [button4 setTintColor:color1];
                    
                    //popoverView.backgroundColor
                    [button4 addTarget:self action:@selector(closePopover) forControlEvents:UIControlEventTouchUpInside];
                    
                    
                    [self.view addSubview:button4];
   
          
          } else{
                    self.arregloFiltrado = [NSMutableArray array];
                    self.arregloBasicos = [NSMutableArray arrayWithObjects:@"Métalicos", @"Sólidos",nil];
                    self.arregloEspeciales = [NSMutableArray arrayWithObjects:@"WOOD", @"SPARKLING",@"SPECTRA",@"MIRROR",@"MARBLE",@"GLOSS",nil];
                    
                    
                    self.cantidadAMostrar = 2;
                    //     You can add content to popover here.
                    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                    UIColor *color=[UIColor blackColor];
                    UIColor *color1=[UIColor whiteColor];
                    
                    [button setTitle:@"Básicos" forState:UIControlStateNormal];
                    [button center];
                    [button setFrame:CGRectMake(0, 25, 200, 44)];
                    //[button sizeToFit];
                    [button setCenter:CGPointMake(80, 22)];
                    [button setBackgroundColor:color];
                    [button setTintColor:color1];
                    
                    //popoverView.backgroundColor
                    [button addTarget:self action:@selector(showBasicos) forControlEvents:UIControlEventTouchUpInside];
                    
                    
                    [self.view addSubview:button];
                    
                    button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                    [button2 setTitle:@"Especiales" forState:UIControlStateNormal];
                    [button2 center];
                    [button2 setFrame:CGRectMake(0, 25, 200, 44)];
                    //[button sizeToFit];
                    [button2 setCenter:CGPointMake(80, 69)];
                    [button2 setBackgroundColor:color];
                    [button2 setTintColor:color1];
                    
                    //popoverView.backgroundColor
                    [button2 addTarget:self action:@selector(showEspeciales) forControlEvents:UIControlEventTouchUpInside];
                    
                    
                    [self.view addSubview:button2];
          }
          
    
    }

#pragma mark - Actions

- (void)closePopover {
    [self dismissViewControllerAnimated:YES completion:nil];
          


}

-(void)filtrarPorTipo:(NSString *) tipo{
          for(int i=0; i<[self.arregloColores count]; i++) {
                    Color *color = [self.arregloColores objectAtIndex:i];
//                    if(color.)) {
//                              <#statements#>
//                    }
          }
}
-(void) showEspeciales{
          [button removeFromSuperview];
          [button2 removeFromSuperview];
          
          // UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
          UIColor *color=[UIColor blackColor];
          UIColor *color1=[UIColor whiteColor];
          int y=22;
          
          //TAMAÑO DEL POPOVER
          self.cantidadAMostrar = (int)[self.arregloEspeciales count];
          int largo = 47*(self.cantidadAMostrar);
          self.preferredContentSize = CGSizeMake(150, largo);
          
          for(int i=0; i<[self.arregloEspeciales count]; i++) {
                    NSString *tipoEspecial = [self.arregloEspeciales objectAtIndex:i];
                    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                    
                    [button setTitle:[self.arregloEspeciales objectAtIndex:i] forState:UIControlStateNormal];
                    [button sizeToFit];
                    [button setFrame:CGRectMake(0, 25, 200, 44)];
                    [button center];
                    [button setCenter:CGPointMake(80, y)];
                    y = y+47;
                    [button setBackgroundColor:color];
                    [button setTintColor:color1];
                    self.tipoBuscar = tipoEspecial;
                    [button addTarget:self action:@selector(filtrarPor)  forControlEvents:UIControlEventTouchUpInside];
                    
                    [self.view addSubview:button];
          }
}

-(void) showBasicos{
          [button removeFromSuperview];
          [button2 removeFromSuperview];
          
          // UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
          UIColor *color=[UIColor blackColor];
          UIColor *color1=[UIColor whiteColor];
          int y=22;
          
          //TAMAÑO DEL POPOVER
          self.cantidadAMostrar = (int)[self.arregloBasicos count];
          int largo = 47*(self.cantidadAMostrar);
          self.preferredContentSize = CGSizeMake(150, largo);
          
          for(int i=0; i<[self.arregloBasicos count]; i++) {
                    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                    
                    [button setTitle:[self.arregloBasicos objectAtIndex:i] forState:UIControlStateNormal];
                    [button sizeToFit];
                    [button setFrame:CGRectMake(0, 25, 200, 44)];
                    [button center];
                    [button setCenter:CGPointMake(80, y)];
                    y = y+47;
                    [button setBackgroundColor:color];
                    [button setTintColor:color1];
                    [button addTarget:self action:@selector(closePopover) forControlEvents:UIControlEventTouchUpInside];
                    [self.view addSubview:button];
          }
}


-(void) filtrarPor{
          
          for(int i=0; i<[self.arregloColores count]; i++) {
                    Color *color = [self.arregloColores objectAtIndex:i];
                    if([color.id_subtipo isEqualToString:self.tipoBuscar]){
                              [self.arregloFiltrado addObject:color];
                    }
          }
          CollectionColoresController *filtrado = [[CollectionColoresController alloc]init];
          filtrado.esFiltro = 1;
          filtrado.arrayColores = self.arregloFiltrado;
          
          DetailsViewController *abc = [[DetailsViewController alloc]init];
          [abc.navigationController pushViewController:filtrado animated:YES];
}


#pragma mark - Popover Presentation Controller Delegate

- (void)prepareForPopoverPresentation:(UIPopoverPresentationController *)popoverPresentationController {
    self.popoverPresentationController.sourceView = self.sourceView ? self.sourceView : self.view;
    self.popoverPresentationController.sourceRect = self.sourceRect;
    self.preferredContentSize = self.contentSize;
    
    popoverPresentationController.permittedArrowDirections = self.arrowDirection ? self.arrowDirection : UIPopoverArrowDirectionAny;
    popoverPresentationController.passthroughViews = self.passthroughViews;
    popoverPresentationController.backgroundColor = self.backgroundColor;
    popoverPresentationController.popoverLayoutMargins = self.popoverLayoutMargins;
}

#pragma mark - Adaptive Presentation Controller Delegate

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    return UIModalPresentationNone;
}

@end
