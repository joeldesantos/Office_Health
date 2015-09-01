//
//  AppData.m
//  Office Health
//
//  Created by Aleyr on 8/31/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "AppData.h"

@implementation AppData
@synthesize maAllExercises;
@synthesize maAllExercisesImages;
@synthesize maExercises;
@synthesize userId;
@synthesize idToken;
@synthesize name;
@synthesize email;


static AppData *instance = nil;

+(AppData *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance = [AppData new];
            
            //Initialize code
            instance.maAllExercises = [[NSMutableArray alloc] initWithObjects:
                                       @"Neck", @"Arms", nil];
            instance.maAllExercisesImages = [[NSMutableArray alloc] initWithObjects:
                                       @"img1.jpg", @"img2.jpg", nil];
        }
    }
    return instance;
}

@end
