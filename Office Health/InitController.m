//
//  ViewController.m
//  Office Health
//
//  Created by Aleyr on 8/31/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "InitController.h"
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
}

/**********************************************************************************************/
#pragma mark - Video method
/**********************************************************************************************/

-(void)playVideo {
    
    //Play video
    
    NSString *videoPath = [[NSBundle mainBundle] pathForResource:@"OfficeHealthIntro" ofType:@"mov"];
    
    NSURL *videoUrl     = [NSURL fileURLWithPath:videoPath];
    
    
    
    self.moviePlayer = [[AVPlayerViewController alloc] init];
    
    self.moviePlayer.player = [AVPlayer playerWithURL:videoUrl];
    
    //Because sound is not correct I muted it
    
    self.moviePlayer.player.volume = 0;
    
    [self.moviePlayer.view setFrame:CGRectMake( -600, -100, 1440, 960)];
    
    self.moviePlayer.showsPlaybackControls = false;
    
    [self.vVideo addSubview:self.moviePlayer.view];
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification object:[UIApplication sharedApplication] queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        
        [self.moviePlayer.player play];
        
    }];
    
}

/**********************************************************************************************/
#pragma mark - Action methods
/**********************************************************************************************/



@end