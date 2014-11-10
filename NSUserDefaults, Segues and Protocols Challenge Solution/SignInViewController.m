//
//  ViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Matthew Linaberry on 11/4/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "SignInViewController.h"
#import "CreateAccountViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonClick:(UIButton *)sender {
    [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
}

- (IBAction)createAccountClick:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toCreateAccountViewAccountSegue" sender:sender];
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]]) {
        CreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
}

# pragma mark - CreateAccountDelegate methods.
- (void) didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
