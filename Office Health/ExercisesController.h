//
//  ExercisesController.h
//  Office Health
//
//  Created by Aleyr on 8/31/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExercisesController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *eTbl;
- (IBAction)menuBtn:(id)sender;
- (IBAction)doneBtn:(id)sender;

@end
