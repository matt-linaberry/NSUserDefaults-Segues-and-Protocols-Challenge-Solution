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
    NSString *userName = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
    
    // check the stuff entered is in the NSUserDefaults
    
    if ([self.userNameTextField.text isEqualToString:userName] && [self.passwordTextField.text isEqualToString:password])
    {
        [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Username/password is not found!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
    
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
