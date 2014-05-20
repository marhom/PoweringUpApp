//
//  PUFirstViewController.m
//  PoweringUpApp
//
//  Created by Jonathan Poock on 5/19/14.
//  Copyright (c) 2014 PoweringUp.me. All rights reserved.
//

#import "PUFirstViewController.h"

@interface PUFirstViewController ()

@end

@implementation PUFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doCalculation:(id)sender {
    NSNumber *bmr, *calories;
    NSArray *multipliers = [[NSArray alloc] initWithObjects:@(1.2),@(1.375),@(1.55),@(1.725),@(1.9), nil];
    switch(self.gender.selectedSegmentIndex)
    {
        case(1):
            bmr = [NSNumber numberWithDouble: (66 + (6.23 * [self.lbs.text intValue]) + (12.7 * ([self.inches.text intValue] + 12.7 * 12 * [self.feet.text intValue])) - (6.8 * [self.age.text intValue]))];
            break;
        case(2):
            bmr = [NSNumber numberWithDouble: (655 + (4.35 * [self.lbs.text intValue]) + (4.7 * ([self.inches.text intValue] + 4.7 * 12 * [self.feet.text intValue])) - (4.7 * [self.age.text intValue]))];
            
    }
    NSInteger selectedInd = self.activityL.selectedSegmentIndex;
    calories = [NSNumber numberWithDouble: ([bmr doubleValue] * [[multipliers objectAtIndex:selectedInd] doubleValue])];
                                                                 
    self.bmrView.text = [NSString stringWithFormat:@"BMR: %f1.2", [bmr floatValue]];
    self.calorieView.text = [NSString stringWithFormat:@"Calories: %f1.2", [calories floatValue]];

}
@end
