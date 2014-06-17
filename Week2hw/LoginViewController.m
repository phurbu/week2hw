//
//  LoginViewController.m
//  Week2hw
//
//  Created by Phurbu Dolma on 6/12/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "LoginViewController.h"
#import "FeedViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UILabel *responseLabel;
@property (weak, nonatomic) IBOutlet UIView *MoveUpView;
@property (weak, nonatomic) IBOutlet UIButton *MoveUpButton;
@property (weak, nonatomic) IBOutlet UIButton *MoveUpSignup;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *LoadingIndicator;

- (IBAction)onLoginButton:(id)sender;
- (IBAction)OnMoveUp:(id)sender;

- (IBAction)onTap:(id)sender;
- (void) checkResponse;
@end

@implementation LoginViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.responseLabel.text = @"";
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)onLoginButton:(id)sender {
     [self.LoadingIndicator startAnimating];
[self performSelector:@selector(checkResponse) withObject:nil afterDelay:1];
}

- (IBAction)OnMoveUp:(id)sender {
    CGRect frame = self.MoveUpView.frame;
    frame.origin.y = frame.origin.y - 50;
    
    self.MoveUpView.frame = frame;
}



- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    CGRect frame = self.MoveUpView.frame;
    frame.origin.y = frame.origin.y + 50;
    
    self.MoveUpView.frame = frame;
}
- (void)checkResponse {
    [self.LoadingIndicator stopAnimating];
    if ([[self.emailField.text lowercaseString] isEqualToString:@"phurbu@yahoo.com"] && [[self.passwordField.text lowercaseString] isEqualToString:@"1234"]) {
        
        UIViewController *feedviewcontroller = [[FeedViewController alloc] init];
        feedviewcontroller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        
        [self presentViewController:feedviewcontroller animated:YES completion:nil];
 
        
    } else {
        
        UIAlertView *errorView = [[UIAlertView alloc]initWithTitle:@"Incorrect Password" message:@"The password you entered is incorrect. Please try again" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        
        [errorView show];    }
}
@end
