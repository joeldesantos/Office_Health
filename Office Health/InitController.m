//
//  ViewController.m
//  Office Health
//
//  Created by Aleyr on 8/31/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "InitController.h"
#import "AppData.h"
@import AVFoundation;

@interface InitController ()

@end

@implementation InitController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    [self playVideo];
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationSlide];
    
    // TODO(developer) Configure the sign-in button look/feel
    self.signInButton.style = kGIDSignInButtonStyleWide;
//    self.signInButton.colorScheme = kGIDSignInButtonColorSchemeLight;
    [self.signInButton setFrame:CGRectMake(8, 530, 358, 553)];
    
    [GIDSignIn sharedInstance].uiDelegate = self;
    
    // Uncomment to automatically sign in the user.
    //[[GIDSignIn sharedInstance] signInSilently];
}

/**********************************************************************************************/
#pragma mark - Video method
/**********************************************************************************************/

-(void)playVideo {
    
    //Play video
    
    ///NSString *videoPath = [[NSBundle mainBundle] pathForResource:@"OfficeHealthIntro" ofType:@"mov"];
    NSString *videoPath = [[NSBundle mainBundle] pathForResource:@"OfficeHealthIntro2" ofType:@"mp4"];
    
    NSURL *videoUrl     = [NSURL fileURLWithPath:videoPath];
    
    
    
    self.moviePlayer = [[AVPlayerViewController alloc] init];
    
    self.moviePlayer.player = [AVPlayer playerWithURL:videoUrl];
    
    //Because sound is not correct I muted it
    self.moviePlayer.player.volume = 0;
    
    //[self.moviePlayer.view setFrame:CGRectMake( -600, -100, 1440, 960)];
    [self.moviePlayer.view setFrame:CGRectMake( -800, -200, 1920, 1080)];
    
    self.moviePlayer.showsPlaybackControls = false;
    
    [self.vVideo addSubview:self.moviePlayer.view];
    
    self.moviePlayer.player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    
    //set a listener for when the video ends
     [[NSNotificationCenter defaultCenter] addObserverForName:AVPlayerItemDidPlayToEndTimeNotification object:[self.moviePlayer.player currentItem] queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        
        //[self.moviePlayer.player play];
        AVPlayerItem *p = [note object];
        [p seekToTime:kCMTimeZero];
        
    }];

     [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification object:[UIApplication sharedApplication] queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        
        [self.moviePlayer.player play];
        
    }];
}

/**********************************************************************************************/
#pragma mark - Action methods
/**********************************************************************************************/

- (void)signIn:(GIDSignIn *)signIn
didSignInForUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    // Perform any operations on signed in user here.
    AppData *appData = [AppData getInstance];
    appData.userId = user.userID;                  // For client-side use only!
    appData.idToken = user.authentication.idToken; // Safe to send to the server
    appData.name = user.profile.name;
    appData.email = user.profile.email;
    // ...
}


@end
