//
//  CharacterDetails.m
//  CM-Lab01
//
//  Created by 0x00 on 18/06/15.
//  Copyright (c) 2015 0x00. All rights reserved.
//

#import "CharacterDetails.h"
#import "Declarations.h"

@interface CharacterDetails ()

@end

@implementation CharacterDetails


/*****************************************************/

/*****************************************************/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.lblDesc.adjustsFontSizeToFitWidth = YES;
    self.lblDesc.text   = maDesc [miCharacterIndex];
    self.lblName.text   = maNames[miCharacterIndex];
    
   if ([UIImage imageNamed:maImgs[miCharacterIndex]] == nil) {
        NSString *cachedFolderPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
        NSString *cachedImagePath = [cachedFolderPath stringByAppendingPathComponent:maImgs [miCharacterIndex]];
        self.imgUser.image = [UIImage imageWithData:[NSData dataWithContentsOfFile:cachedImagePath]];
        
    }
    
    else {
        self.imgUser.image = [UIImage imageNamed:maImgs[miCharacterIndex]];
    }
    
    
    
}
/**********************************************************************************************/
/**********************************************************************************************/

- (IBAction)btnBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
