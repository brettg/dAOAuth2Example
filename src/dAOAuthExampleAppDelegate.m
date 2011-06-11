//
//  dAOAuthExampleAppDelegate.m
//  dAOAuthExample
//
//  Created by Brett Gibson on 6/9/11.
//  Copyright 2011 Brett Gibson. All rights reserved.
//

#import "dAOAuthExampleAppDelegate.h"

#import "dAOAuthExampleViewController.h"
#import "DeviantArt.h"

@implementation dAOAuthExampleAppDelegate


@synthesize window=_window;
@synthesize viewController=_viewController;
@synthesize deviantArt = _deviantArt;

- (BOOL)application:(UIApplication *)application 
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
  self.window.rootViewController = self.viewController;
  [self.window makeKeyAndVisible];
  
  self.deviantArt = [[[DeviantArt alloc] init] autorelease];
  return YES;
}


- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url{
  return [self.deviantArt handleOpenURL:url];
}

+ (dAOAuthExampleAppDelegate *)currentDelegate{
  return [UIApplication sharedApplication].delegate;
}


@end
