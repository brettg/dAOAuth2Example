//
//  dAOAuthExampleAppDelegate.h
//  dAOAuthExample
//
//  Created by Brett Gibson on 6/9/11.
//  Copyright 2011 Brett Gibson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class dAOAuthExampleViewController, DeviantArt;

@interface dAOAuthExampleAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet dAOAuthExampleViewController *viewController;

@property (nonatomic, retain) DeviantArt *deviantArt;

+ (dAOAuthExampleAppDelegate *)currentDelegate;

@end
