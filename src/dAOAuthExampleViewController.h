//
//  dAOAuthExampleViewController.h
//  dAOAuthExample
//
//  Created by Brett Gibson on 6/9/11.
//  Copyright 2011 Brett Gibson. All rights reserved.
//


#import "DeviantArt.h"
#import <UIKit/UIKit.h>

@interface dAOAuthExampleViewController : UIViewController<DeviantArtDelegate> {
    
}
@property (nonatomic, retain) IBOutlet UITextField *titleInput;
@property (nonatomic, retain) IBOutlet UITextView *output;

@end
