//
//  ViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Matthew Linaberry on 11/4/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAccountViewController.h"
@interface SignInViewController : UIViewController <CreateAccountViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)loginButtonClick:(UIButton *)sender;
- (IBAction)createAccountClick:(UIBarButtonItem *)sender;

@end

