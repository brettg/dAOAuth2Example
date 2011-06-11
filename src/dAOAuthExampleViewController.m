//
//  dAOAuthExampleViewController.m
//  dAOAuthExample
//
//  Created by Brett Gibson on 6/9/11.
//  Copyright 2011 Brett Gibson. All rights reserved.
//

#import "dAOAuthExampleViewController.h"

#import "dAOAuthExampleAppDelegate.h"

@implementation dAOAuthExampleViewController

@synthesize titleInput = _titleInput, output = _output;

- (void)dealloc{
  [_titleInput release], _titleInput = nil;
  [_output release]; _output = nil;
  
  [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad{
  [super viewDidLoad];
}

- (IBAction)onShareImage{
  DeviantArt *dA = [dAOAuthExampleAppDelegate currentDelegate].deviantArt;
  dA.delegate = self;
  
  [dA postImage:[UIImage imageNamed:@"animal.jpg"] withTitle:self.titleInput.text];
}

#pragma mark - DeviantArtDelegate
- (void)stashWasPostedWithResponse:(NSDictionary *)jsonData{  
  self.output.text = [NSString stringWithFormat:@"posted to http://www.deviantart.com/deviation/%@",
                                                [jsonData objectForKey:@"stashid"]];
}

@end
