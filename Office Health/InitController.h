//
//  ViewController.h
//  Office Health
//
//  Created by Aleyr on 8/31/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <Google/SignIn.h>
@import AVKit;

@interface InitController : UIViewController <GIDSignInUIDelegate>

@property (strong, nonatomic) AVPlayerViewController *moviePlayer;
@property (strong, nonatomic) IBOutlet UIView *vVideo;

@property (weak, nonatomic) IBOutlet GIDSignInButton *signInButton;

@end

