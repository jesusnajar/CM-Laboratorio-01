//
//  ViewController.m
//  CM-Lab01
//
//  Created by 0x00 on 18/06/15.
//  Copyright (c) 2015 0x00. All rights reserved.
//

#import "Start.h"
#import "cellGame.h"
#import "Declarations.h"
#import "CharacterDetails.h"
#import "AddNew.h"

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [self.tblStart reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//-------------------------------------------------------------------------------
-(void)initController {
    //Initialize arrays
    maNames         = [[NSMutableArray alloc] initWithObjects: @"Margaery Tyrell", @"Tyrion Lannister", @"Jon Snow", @"Arya Stark", @"Daenerys Targaryen", nil];
    maAges          = [[NSMutableArray alloc] initWithObjects: @"30", @"28", @"40", @"38", @"30", nil];
    maImgs          = [[NSMutableArray alloc] initWithObjects: @"hilda.png", @"lannister.png", @"snow.jpg", @"stark.jpg", @"targaryen.jpg", nil];
    
    maDesc          = [[NSMutableArray alloc] initWithObjects:
                       @"Margaery Tyrell es la única hija de Lord Mace Tyrell y Lady Alerie Hightower. Tiene tres hermanos, Willas, Garlan y Loras. .",
                       @"Tyrion Lannister es el tercer hijo de Lord Tywin Es apodado el Gnomo y Mediohombre debido a su enanismo.",
                       @"Jon Snow Lord es el Lord Comandante de la Guardia de la Noche nº 998. ",
                       @"Arya Stark es la segunda hija de Lord Eddard Stark y Lady Catelyn Tully.",
                       @"Daenerys Targaryen La reina, también llamada Daenerys de la Tormenta.", nil];
                       
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
    return maNames.count;
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

    cellGame *cell = (cellGame *)[self.tblStart  dequeueReusableCellWithIdentifier:@"cellGame"];
    
    if (cell == nil) {
        [self.tblStart registerNib:[UINib nibWithNibName:@"cellGame" bundle:nil] forCellReuseIdentifier:@"cellGame"];
        cell = [self.tblStart  dequeueReusableCellWithIdentifier:@"cellGame"];
    }
    //Fill cell with info from arrays
    cell.lblName.text   = maNames[indexPath.row];
    cell.lblAge.text    = maAges[indexPath.row];
    

    
   if ([UIImage imageNamed:maImgs [indexPath.row]] == nil){
        NSString *cachedFolderPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
        NSString *cachedImagePath = [cachedFolderPath stringByAppendingPathComponent:maImgs[indexPath.row]];
        cell.imgUser.image = [UIImage imageWithData: [NSData dataWithContentsOfFile:cachedImagePath]];
          }
    
    
    else {
        cell.imgUser.image  = [UIImage imageNamed:maImgs[indexPath.row]];
       
                }
    

    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   miCharacterIndex = (int)indexPath.row;
    
  CharacterDetails *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CharacterDetails"];
    
    [self presentViewController:viewController animated:YES completion:nil];
    
}


- (IBAction)btnAdd:(id)sender {
    
    
    AddNew *ViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
        instantiateViewControllerWithIdentifier:@"AddNew"];
                              
        [self presentViewController:ViewController animated:YES completion:nil];
}
@end
