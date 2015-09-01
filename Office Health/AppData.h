//
//  AppData.h
//  Office Health
//
//  Created by Aleyr on 8/31/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface AppData : NSObject {
    
    NSMutableArray   *maAllExercises;
    NSMutableArray   *maAllExercisesImages;
    NSMutableArray   *maExercises;
    NSString         *userId;
    NSString         *idToken;
    NSString         *name;
    NSString         *email;
    UIViewController *vc;
}

@property(nonatomic,retain)NSMutableArray   *maAllExercises;
@property(nonatomic,retain)NSMutableArray   *maAllExercisesImages;
@property(nonatomic,retain)NSMutableArray   *maExercises;

@property(nonatomic,retain)NSString         *userId;
@property(nonatomic,retain)NSString         *idToken;
@property(nonatomic,retain)NSString         *name;
@property(nonatomic,retain)NSString         *email;
@property(nonatomic,retain)UIViewController *vc;

+(AppData*)getInstance;


@end
