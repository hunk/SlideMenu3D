//
//  HKSlideMenu3DController
//  SlideMenu3D
//
//  Created by Edgar on 4/6/15.
//  Copyright (c) 2015 hunk. All rights reserved.
//

typedef enum {
    MenuLeft,
    MenuRight,
} Menu3DSide;

#import <UIKit/UIKit.h>

@class HKSlideMenu3DController;
@protocol HKSlideMenu3DControllerDelegate <NSObject>

@optional

-(void)willOpenMenu;
-(void)didOpenMenu;

//close
-(void)willCloseMenu;
-(void)didCloseMenu;



@end


@interface HKSlideMenu3DController : UIViewController<UIGestureRecognizerDelegate>

#pragma mark - Managed View Controllers

@property (nonatomic, weak) id<HKSlideMenu3DControllerDelegate> delegate;

@property (nonatomic, strong) UIViewController *menuViewController;
@property (nonatomic, strong) UIViewController *mainViewController;
@property (nonatomic, strong) UIImage *backgroundImage;
@property (nonatomic) UIViewContentMode backgroundImageContentMode;
@property (nonatomic, assign) BOOL enablePan;
@property (nonatomic) Menu3DSide sideMenu3D;
@property (nonatomic, assign) CGFloat distanceOpenMenu;

- (void)toggleMenu;

@end
