//
//  ViewController.m
//  Tipper
//
//  Created by Ben Lindsey on 12/14/13.
//  Copyright (c) 2013 Ben Lindsey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipAmount;
@property (weak, nonatomic) IBOutlet UITextField *priceField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)onTap:(id)sender {
    [self.priceField resignFirstResponder];
}

- (IBAction)onCalculateButton {
    NSArray *tips = @[ @(0.10), @(0.15), @(0.20) ];
    float tipPercent = [tips[self.tipAmount.selectedSegmentIndex] floatValue];

    float priceAmount = [self.priceField.text floatValue];
    float tip = priceAmount * tipPercent;

    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", priceAmount + tip];
}







@end
