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
        case(0):
            bmr = [NSNumber numberWithDouble: (66 + (6.23 * [self.lbs.text intValue]) + (12.7 * ([self.inches.text intValue] + 12 * [self.feet.text intValue])) - (6.8 * [self.age.text intValue]))];
            break;
        case(1):
            bmr = [NSNumber numberWithDouble: (655 + (4.35 * [self.lbs.text intValue]) + (4.7 * ([self.inches.text intValue] + 12 * [self.feet.text intValue])) - (4.7 * [self.age.text intValue]))];
            
    }
    NSInteger selectedInd = self.activityL.selectedSegmentIndex;
    calories = [NSNumber numberWithDouble: ([bmr doubleValue] * [[multipliers objectAtIndex:selectedInd] doubleValue])];
                                                                 
    self.bmrView.text = [NSString stringWithFormat:@"BMR: %.00f", [bmr floatValue]];
    self.calorieView.text = [NSString stringWithFormat:@"Calories: %.00f", [calories floatValue]];

}
-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //can we use fastenum + a collection here + register all textfields?
    UITouch *touch = [[event allTouches] anyObject];
    
    if ([self.age isFirstResponder] && [touch view] != self.age) {
        [self.age resignFirstResponder];
        
    }
    if ([self.feet isFirstResponder] && [touch view] != self.feet) {
        [self.feet resignFirstResponder];}
    if ([self.inches isFirstResponder] && [touch view] != self.inches) {
        [self.inches resignFirstResponder];}
    if ([self.lbs isFirstResponder] && [touch view] != self.lbs) {
        [self.lbs resignFirstResponder];}
    [super touchesBegan:touches withEvent:event];
}@end
