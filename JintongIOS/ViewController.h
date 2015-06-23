//
//  ViewController.h
//  JintongIOS
//
//  Created by EMo‘s mac  on 6/20/15.
//  Copyright (c) 2015 EMo‘s mac . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)sliderChanged:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *sliderLaber;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
- (IBAction)switchChanged:(UISwitch *)sender;
- (IBAction)toggleControls:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;
- (IBAction)buttonPressed:(id)sender;
@end

