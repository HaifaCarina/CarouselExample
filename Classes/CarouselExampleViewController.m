//
//  CarouselExampleViewController.m
//  CarouselExample
//
//  Created by Macbook on 7/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CarouselExampleViewController.h"

@interface CarouselExampleViewController () <UIActionSheetDelegate>
@property (nonatomic, retain) NSArray *items;
@end


@implementation CarouselExampleViewController
@synthesize items;

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {

	[super loadView];
	
	self.view.backgroundColor = [UIColor grayColor];
	
	// The items to be displayed in the carousel
	items = [NSArray arrayWithObjects:
			 [UIImage imageNamed:@"smiley1.jpg"],
			 [UIImage imageNamed:@"smiley2.jpg"],
			 [UIImage imageNamed:@"smiley3.jpg"],
			 [UIImage imageNamed:@"spongebob.png"],
			 [UIImage imageNamed:@"patrickstar.png"],
			 nil];
	
	// Initialize and configure the carousel
	carousel = [[iCarousel alloc] initWithFrame:self.view.bounds];
	carousel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    carousel.type = iCarouselTypeRotary;
	carousel.dataSource = self;
	
	[self.view addSubview:carousel];
}


#pragma mark -
#pragma mark iCarousel methods

- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return [items count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index
{
 	UIImage *image = [items objectAtIndex:index];
	UIButton *button = [[[UIButton alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)] autorelease];
	[button setBackgroundImage:image forState:UIControlStateNormal];
	[button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	button.titleLabel.font = [button.titleLabel.font fontWithSize:50];
	//[button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
	button.tag=index;
	return button;
	
}

- (void)dealloc {
    [super dealloc];
}

@end
