//
//  CalendarController.h
//  Office Health
//
//  Created by Aleyr on 8/31/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Google/SignIn.h>

#import "GTMOAuth2ViewControllerTouch.h"
#import "GTLCalendar.h"

@interface CalendarController : UIViewController

@property (nonatomic, strong) GTLServiceCalendar *service;
//@property (nonatomic, strong) UITextView *output;
@property (strong, nonatomic) IBOutlet UITextView *output;

- (IBAction)menuBtn:(id)sender;
- (IBAction)addBtn:(id)sender;

@end