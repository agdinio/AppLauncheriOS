//
//  ViewController.m
//  AppLauncheriOS
//
//  Created by Relly on 1/13/15.
//  Copyright (c) 2015 BlueMate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[[self btnOpen] layer] setBorderWidth:1.0f];
    [[[self btnOpen] layer] setBorderColor:[UIColor blackColor].CGColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onOpenGarageMateTouchUpInside:(id)sender
{
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSURL *ourUrl = [NSURL URLWithString:@"garagemate://"];
    if ([ourApplication canOpenURL:ourUrl]) {
        [ourApplication openURL:ourUrl];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"App not found" message:@"The GarageMate App is not installed. It must be installed to open." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
    }

}
@end
