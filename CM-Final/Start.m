//
//  ViewController.m
//  CM-Final
//
//  Created by 0x00 on 20/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import "Start.h"
#import "Declarations.h"
#import "cellMapa.h"
#import "MapaViewController.h"

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController]; //carga la función initController
   // self.title = @"Mapa";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Inicia el array

//-------------------------------------------------------------------------------
- (void)initController {
    
    maPais            = [[NSMutableArray alloc] initWithObjects: @"México", @"Canada",@"Inglaterra", @"España",nil];
    
    
    
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maPais.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    cellMapa *cell = (cellMapa *)[tableView dequeueReusableCellWithIdentifier:@"cellMapa"];
    
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellMapa" bundle:nil] forCellReuseIdentifier:@"cellMapa"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellMapa"];
    }
    //Fill cell with info from arrays
    cell.lblPais.text  =maPais[indexPath.row];
    
    return cell;
    
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    miCellIndexPais = (int)indexPath.row;
    
  
    
    MapaViewController *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MapaViewController"];
    
    [self presentViewController:viewController animated:YES completion:nil];
    
    
}

@end
