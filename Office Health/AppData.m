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
@synthesize vc;


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
                                       @"Shoulder Stretch Front", @"Shoulder Stretch Back",
                                       @"Shoulder Pull", @"Tricep and Shoulde Stretch",
                                       @"Neck Stretch", @"Neck Flexion",
                                       @"Knee to Chest", @"Chest Stretch",
                                       @"Quadriceps Stretch", @"Hamstring Stretch",
                                       @"Buttocks Stretch", @"Wrist/Forearm Stretch",
                                       @"Biceps Stretch",
                                       nil];
            instance.maAllExercisesImages = [[NSMutableArray alloc] initWithObjects:
                                             @"img1.jpg", @"img2.jpg",
                                             @"img1.jpg", @"img2.jpg",
                                             @"img1.jpg", @"img2.jpg",
                                             @"img1.jpg", @"img2.jpg",
                                             @"img1.jpg", @"img2.jpg",
                                             @"img1.jpg", @"img2.jpg",
                                             @"img1.jpg",
                                             nil];
            if (instance.maExercises == nil) {
                instance.maExercises = instance.maAllExercises;
            }
        }
    }
    return instance;
}

@end
