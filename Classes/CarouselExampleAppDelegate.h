//
//  CarouselExampleAppDelegate.h
//  CarouselExample
//
//  Created by Macbook on 7/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CarouselExampleViewController;

@interface CarouselExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CarouselExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CarouselExampleViewController *viewController;

@end

