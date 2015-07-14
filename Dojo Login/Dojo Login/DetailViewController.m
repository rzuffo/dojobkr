//
//  DetailViewController.m
//  Dojo Login
//
//  Created by Rafael Zuffo Tulimoschi on 7/14/15.
//  Copyright (c) 2015 CI&T. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _userNameLabel.text = _userNameSegue;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Actions
- (IBAction)logoutButtonAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{ }];
    
}

@end
