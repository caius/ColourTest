//
//  ColourTestAppDelegate.h
//  ColourTest
//
//  Created by Caius Durling on 18/09/2011.
//  Copyright 2011 Swedishcampground Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ColourTestViewController;

@interface ColourTestAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ColourTestViewController *viewController;

@end
