//
//  ViewController.h
//  CM-Lab01
//
//  Created by 0x00 on 18/06/15.
//  Copyright (c) 2015 0x00. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Start : UIViewController <UITableViewDataSource, UITableViewDelegate>

//Actions

- (IBAction)btnAdd:(id)sender;

//Table Start

@property (strong, nonatomic) IBOutlet UITableView *tblStart;

@end

