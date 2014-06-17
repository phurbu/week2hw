//
//  MoreViewController.m
//  Week2hw
//
//  Created by Phurbu Dolma on 6/16/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "MoreViewController.h"
#import "FeedViewController.h"
#import "LoginViewController.h"


@interface MoreViewController ()
- (IBAction)onNewsFeed:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *MoreScrollView;
- (IBAction)onDoneButton:(id)sender;

@end

@implementation MoreViewController

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
    self.MoreScrollView.
    contentSize =
    CGSizeMake(320, 1500);
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onNewsFeed:(id)sender {
    UIViewController *feedviewcontroller = [[FeedViewController alloc] init];
    feedviewcontroller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    [self presentViewController:feedviewcontroller animated:YES completion:nil];
    
}
- (IBAction)onDoneButton:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure you want to log out?" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Logout" otherButtonTitles: nil];
    
    [actionSheet showInView:self.view];}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;{

    UIViewController *loginviewcontroller = [[LoginViewController alloc] init];
    loginviewcontroller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
        [self presentViewController:loginviewcontroller animated:YES completion:nil];
    
}

@end
