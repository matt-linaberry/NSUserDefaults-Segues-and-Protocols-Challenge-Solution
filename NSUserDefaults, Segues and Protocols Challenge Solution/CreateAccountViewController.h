//
//  AccountViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Matthew Linaberry on 11/4/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <UIKit/UIKit.h>
#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol CreateAccountViewDelegate <NSObject>
- (void) didCancel;
- (void) didCreateAccount;
@end

@interface CreateAccountViewController : UIViewController

@property (weak, nonatomic) id <CreateAccountViewDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;
- (IBAction)createAccountButton:(UIButton *)sender;
- (IBAction)cancelButton:(UIButton *)sender;

@end
