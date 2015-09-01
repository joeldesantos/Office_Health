//
//  ExercisesController.m
//  Office Health
//
//  Created by Aleyr on 8/31/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "ExercisesController.h"
#import "ExerciseCell.h"
#import "AppData.h"
#import "CalendarController.h"

@interface ExercisesController ()

@end

@implementation ExercisesController

- (void)viewDidLoad {
    [super viewDidLoad];
    [AppData getInstance].vc = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    AppData *data=[AppData getInstance];
    return data.maExercises.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Initialize cells
    ExerciseCell *cell = (ExerciseCell *)[tableView dequeueReusableCellWithIdentifier:@"ExerciseCell"];
    
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"ExerciseCell" bundle:nil] forCellReuseIdentifier:@"ExerciseCell"];
        cell = (ExerciseCell *)[tableView dequeueReusableCellWithIdentifier:@"ExerciseCell"];
        //cell = [[CellNotification alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellNotification"];
    }
    //    [cell reloadInputViews];
    //Fill cell with info from arrays
    AppData *data=[AppData getInstance];
    cell.eNameLbl.text   = data.maExercises[indexPath.row];
    cell.eIconImg.image = [UIImage imageNamed:data.maAllExercisesImages[indexPath.row]];
    
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    mGovernorIndex = (int) indexPath.row;
    Detail *detailsView = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Detail"];
    
    [self presentViewController:detailsView animated:YES completion:nil];
     */
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)menuBtn:(id)sender {
}

- (IBAction)doneBtn:(id)sender {
    CalendarController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"CalendarController"];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
