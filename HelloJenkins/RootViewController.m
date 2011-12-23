//
//  RootViewController.m
//  HelloJenkins
//
//  Created by 徹 小栗 on 11/12/23.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc
{
    [label_ release];
    [button_ release];

    [super dealloc];
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    flg_ = YES;
    
    label_ = [[UILabel alloc]init];
    [label_ setFrame:CGRectMake(50, 100, 200, 50)];
    [label_ setText:@"Zzzzzz"];
    [self.view addSubview:label_];
    
    button_ = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button_ setFrame:CGRectMake(50, 150, 200, 50)];
    [button_ setTitle:@"Help Me!" forState:UIControlStateNormal];
    [button_ addTarget:self action:@selector(didTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_];
}

- (void) didTap
{
    if (flg_) {
        [label_ setText:@"Hello Jenkins !"];
        flg_ = NO;
    }else{
        [label_ setText:@"bye Jenkins !"];
        flg_ = YES;
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
