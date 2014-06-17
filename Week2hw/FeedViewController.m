//
//  FeedViewController.m
//  Week2hw
//
//  Created by Phurbu Dolma on 6/15/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "FeedViewController.h"
#import "LoginViewController.h"
#import "MoreViewController.h"


@interface FeedViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *feedLoading;
@property (weak, nonatomic) IBOutlet UIScrollView *feedScrollView;
- (void)feed;
@property (weak, nonatomic) IBOutlet UIImageView *feedImageView;
- (IBAction)onMore:(id)sender;

@end

@implementation FeedViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{    self.feedImageView.hidden = YES;

    [super viewDidLoad];
    
     [self.feedLoading startAnimating];
    [self performSelector:@selector(feed) withObject:nil afterDelay:2];
    


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)feed {
    self.feedImageView.hidden = NO;

    self.feedScrollView.
    contentSize =
    CGSizeMake(320, 1200);
    

}

- (IBAction)onMore:(id)sender {
    UIViewController *moreviewcontroller = [[MoreViewController alloc] init];
 
    
    [self presentViewController:moreviewcontroller animated:YES completion:nil];
}
@end
