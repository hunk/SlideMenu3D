//
//  HKSlideMenu3DController
//  SlideMenu3D
//
//  Created by Edgar on 4/6/15.
//  Copyright (c) 2015 hunk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HKSlideMenu3DController : UIViewController<UIGestureRecognizerDelegate>

#pragma mark - Managed View Controllers


@property (nonatomic, strong) UIViewController *menuViewController;
@property (nonatomic, strong) UIViewController *mainViewController;
@property (nonatomic, strong) UIImage *backgroundImage;
@property (nonatomic) UIViewContentMode backgroundImageContentMode;

- (void)toggleMenu;

@end
