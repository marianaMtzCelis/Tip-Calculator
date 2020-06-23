//
//  ViewController.m
//  Tip Calculator
//
//  Created by Mariana Martinez on 23/06/20.
//  Copyright © 2020 Mariana Martinez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
@property (weak, nonatomic) IBOutlet UILabel *tipNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalNameLabel;
@property (weak, nonatomic) IBOutlet UIView *bar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tipLabel.alpha = 0;
    self.totalLabel.alpha = 0;
    self.tipControl.alpha = 0;
    self.tipNameLabel.alpha = 0;
    self.totalNameLabel.alpha = 0;
    self.bar.alpha = 0;
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Hello");
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    
    NSArray *percentages = @[@(0.15), @(0.2), @(0.22)];
    
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    
    double tip = tipPercentage * bill;
    
    double total = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f",tip];
    
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f",total];

}

- (IBAction)onEditingBegin:(id)sender {
    
     [UIView animateWithDuration:0.2 animations:^{
          
          self.tipLabel.alpha = 1;
          self.totalLabel.alpha = 1;
          self.tipControl.alpha = 1;
          self.tipNameLabel.alpha = 1;
          self.totalNameLabel.alpha = 1;
          self.bar.alpha = 1;
      }];

}

- (IBAction)onEditingEnd:(id)sender {
    
    [UIView animateWithDuration:0.2 animations:^{
        
        self.tipLabel.alpha = 1;
        self.totalLabel.alpha = 1;
        self.tipControl.alpha = 1;
        self.tipNameLabel.alpha = 1;
        self.totalNameLabel.alpha = 1;
        self.bar.alpha = 1;
    }];
}



@end
