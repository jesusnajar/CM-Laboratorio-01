//
//  CharacterDetails.h
//  CM-Lab01
//
//  Created by 0x00 on 18/06/15.
//  Copyright (c) 2015 0x00. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CharacterDetails : UIViewController

//Image
@property (strong, nonatomic) IBOutlet UIImageView *imgUser;

//Labels

@property (strong, nonatomic) IBOutlet UILabel *lblName;

@property (strong, nonatomic) IBOutlet UILabel *lblDesc;

//Actions
- (IBAction)btnBack:(id)sender;

@end
