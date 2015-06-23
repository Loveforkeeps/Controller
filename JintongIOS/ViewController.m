//
//  ViewController.m
//  JintongIOS
//
//  Created by EMo‘s mac  on 6/20/15.
//  Copyright (c) 2015 EMo‘s mac . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sliderLaber.text = @"50";
   //self.sliderLaber.layer.borderWidth = 2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}
- (IBAction)backgroundTap:(id)sender {
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

- (IBAction)sliderChanged:(UISlider *)sender {
    int progress = (int)lroundf(sender.value);
    self.sliderLaber.text = [NSString stringWithFormat:@"%d",progress];
}
- (IBAction)switchChanged:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleControls:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex ==0) {
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomethingButton.hidden = YES;
    }
    else {
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}
- (IBAction)buttonPressed:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?" delegate:self cancelButtonTitle:@"No way!!" destructiveButtonTitle:@"Yes,I'm sure!" otherButtonTitles:nil, nil];
    [actionSheet showInView:self.view];
}
- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        NSString *msg = nil;
        if (self.nameField.text.length>0) {
            msg = [NSString stringWithFormat:@"You can breathe easy,%@, everything went OK.",self.nameField.text];
        }
        else {
            msg = @"You can breathe easy, everything went OK.";
        }
        UIAlertView *alet = [[UIAlertView alloc]
                             initWithTitle:@"Something was done" message:msg delegate:self cancelButtonTitle:@"哦，好的" otherButtonTitles:nil, nil];
        [alet show];
    }
}
@end
