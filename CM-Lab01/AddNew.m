//
//  AddNew.m
//  CM-Lab01
//
//  Created by 0x00 on 18/06/15.
//  Copyright (c) 2015 0x00. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "AddNew.h"
#import "Declarations.h"

UIImagePickerController *imgPicker;

@interface AddNew ()

@end

@implementation AddNew

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController {
    [[self.txtViewDesc layer] setBorderWidth:1];
    self.txtViewDesc.clipsToBounds = YES;
}

-(void)imagePickerController:(UIImagePickerController *)
picker didFinishPickingImage:(UIImage *)img editingInfo:(NSDictionary *)editingInfo {
    self.imgNew.image = img;
    
    [self dismissModalViewControllerAnimated:YES];
}


- (IBAction)btnSave:(id)sender {
    
    [maAges  addObject: self.txtAge.text];
    [maNames addObject: self.txtName.text];
    [maDesc  addObject: self.txtViewDesc.text];
    
    NSString *imgName = [self.txtName.text stringByAppendingString:@".png"];
    
    [imgName stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    
    [maImgs addObject:imgName];
    
    UIImage *image = self.imgNew.image;
    NSString *cacheFolderPath = NSSearchPathForDirectoriesInDomains (NSCachesDirectory, NSUserDomainMask, YES)[0];
    NSString *cacheImagePath = [cacheFolderPath stringByAppendingPathComponent:imgName];
    [UIImagePNGRepresentation(image) writeToFile:cacheImagePath atomically:YES];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
    

}

- (IBAction)btnCancel:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btnAddImg:(id)sender {
    
    imgPicker = [[UIImagePickerController alloc] init];
    [imgPicker setDelegate:self];
    
    [imgPicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    
    [self presentViewController:imgPicker animated:YES completion:nil];
    
    
    
    
    
}
@end
