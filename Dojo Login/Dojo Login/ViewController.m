//
//  ViewController.m
//  Dojo Login
//
//  Created by Rafael Zuffo Tulimoschi on 7/14/15.
//  Copyright (c) 2015 CI&T. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController () {
    UIAlertView *alert;
    NSString *userName;
}
@property (weak, nonatomic) IBOutlet UILabel *titleLoginLabel;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordUserTextField;

- (IBAction)loginButton:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Fields required" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (void)viewDidDisappear:(BOOL)animated {
    
}


#pragma mark - Actions
- (IBAction)loginButton:(id)sender {
    
    userName = [_userNameTextField text];
    NSString *password = [_passwordUserTextField text];
    
    if (userName.length == 0 || password.length == 0) {
        [alert show];
    } else {
        @try
        {
            [self performSegueWithIdentifier:@"goToDetail" sender:self];
            
        }
        @catch (NSException *exception)
        {
            if ([exception.name isEqualToString:@"NSInvalidArgumentException"])
            {
                NSLog(@"NSInvalidArgumentException");
                [self performSegueWithIdentifier:@"second" sender:self];
            }
        }
    }
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"goToDetail"]) {
        
        DetailViewController *detail = segue.destinationViewController;
        detail.userNameSegue = self->userName;
        
    }
}








@end
