//
//  PUFirstViewController.h
//  PoweringUpApp
//
//  Created by Jonathan Poock on 5/19/14.
//  Copyright (c) 2014 PoweringUp.me. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PUFirstViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *feet;
@property (strong, nonatomic) IBOutlet UITextField *inches;
@property (strong, nonatomic) IBOutlet UITextField *lbs;
@property (strong, nonatomic) IBOutlet UITextField *age;
@property (strong, nonatomic) IBOutlet UISegmentedControl *gender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *activityL;
@property (strong, nonatomic) IBOutlet UISegmentedControl *goal;

@property (strong, nonatomic) IBOutlet UILabel *calorieView;

@property (strong, nonatomic) IBOutlet UILabel *bmrView;
- (IBAction)doCalculation:(id)sender;
- (IBAction)textFieldReturn:(id)sender;
@end
