//
//  SettingsViewController.m
//  Labb1
//
//  Created by Christian Karlsson on 2017-01-15.
//  Copyright © 2017 Christian Karlsson. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UIView *colorView;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that c[an be recreated.
}

- (IBAction)saveSettings:(UIButton *)sender {
    [self refreshColorView];
}

- (UIColor*)currentColor {
    return [UIColor colorWithDisplayP3Red:self.redSlider.value
                                    green:self.greenSlider.value
                                     blue:self.blueSlider.value
                                    alpha:1];
}

- (void)refreshColorView {
    self.colorView.backgroundColor = [self currentColor];
}

@end
