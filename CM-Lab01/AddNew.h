//
//  AddNew.h
//  CM-Lab01
//
//  Created by 0x00 on 18/06/15.
//  Copyright (c) 2015 0x00. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddNew : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

//Text
@property (strong, nonatomic) IBOutlet UITextField *txtName;
@property (strong, nonatomic) IBOutlet UITextField *txtAge;
@property (strong, nonatomic) IBOutlet UITextView *txtViewDesc;

//Actions
- (IBAction)btnSave:(id)sender;
- (IBAction)btnCancel:(id)sender;
- (IBAction)btnAddImg:(id)sender;

//Images
@property (strong, nonatomic) IBOutlet UIImageView *imgNew;
@property (strong, nonatomic) IBOutlet UIButton *btnAddImg;


@end
