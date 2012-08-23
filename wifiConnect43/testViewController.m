//
//  testViewController.m
//  wifiConnect43
//
//  Created by Devin Shively on 8/23/12.
//  Copyright (c) 2012 Devin Shively. All rights reserved.
//

#import "testViewController.h"

@interface testViewController ()

@end

@implementation testViewController

@synthesize displayTextView = _displayTextView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIView *dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
    
    self.displayTextView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.displayTextView];
    [self.displayTextView setInputView:dummyView];
        
    SOLStumbler *sblr = [[SOLStumbler alloc] init];
    [sblr scanNetworks];
    
    [self.displayTextView setText:[sblr description]];
    
    [self.displayTextView setText:[NSString stringWithFormat:@"%@/n**************/nAssociated with response number: %d", self.displayTextView.text, [sblr associateToNetwork:@"Enter network here"]]];
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    return NO;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
