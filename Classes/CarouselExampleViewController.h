//
//  CarouselExampleViewController.h
//  CarouselExample
//
//  Created by Macbook on 7/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface CarouselExampleViewController : UIViewController <iCarouselDataSource ,iCarouselDelegate> {
	iCarousel *carousel;
}

@end

