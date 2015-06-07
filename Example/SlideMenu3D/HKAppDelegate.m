//
//  HKAppDelegate.m
//  SlideMenu3D
//
//  Created by CocoaPods on 04/06/2015.
//  Copyright (c) 2014 @hunk. All rights reserved.
//

#import "HKAppDelegate.h"

#import "HKMenuView.h"
#import "HKAlternativeView.h"

@interface HKAppDelegate ()<HKSlideMenu3DControllerDelegate>{
    
    HKMenuView *menuVC;
    HKRotationNavigationController *navMain;
    HKAlternativeView *altVC;
}

@end

@implementation HKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.slideMenuVC = [[HKSlideMenu3DController alloc] init];
    self.slideMenuVC.view.frame =  [[UIScreen mainScreen] bounds];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle: nil];
    
    menuVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"HKMenuView"];
    menuVC.view.backgroundColor = [UIColor clearColor];
    navMain = (HKRotationNavigationController*)[mainStoryboard instantiateViewControllerWithIdentifier: @"HKMainNavController"];

    self.slideMenuVC.menuViewController = menuVC;
    
    self.slideMenuVC.mainViewController = navMain;
    
    self.slideMenuVC.backgroundImage = [UIImage imageNamed:@"cloud"];
    self.slideMenuVC.backgroundImageContentMode = UIViewContentModeTopLeft;
    self.slideMenuVC.enablePan = NO;
    
    //Set delegate methods in currect controller or another class, for example Menu
//    self.slideMenuVC.delegate = self;
    self.slideMenuVC.delegate = menuVC.self;

    
    [self.window setRootViewController:self.slideMenuVC];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

+ (HKAppDelegate *)mainDelegate {
    return (HKAppDelegate *)[UIApplication sharedApplication].delegate;
}

- (void)setFirstView{
    
    if (!navMain) {
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle: nil];
        navMain = (HKRotationNavigationController*)[mainStoryboard instantiateViewControllerWithIdentifier: @"HKMainNavController"];
    }
    
    self.slideMenuVC.mainViewController = navMain;
    
//    if ([UIViewController class]) {
//        
//        if ( !UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation)  ) {
//            [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationPortrait] forKey:@"orientation"];
//        }
//    }
    
}

- (void)setSecondView{
    
    if (!altVC) {
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle: nil];
        altVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"HKAlternativeView"];
    }
    self.slideMenuVC.mainViewController = altVC;
    // iOS8 has this class only
    if ([UIViewController class]) {
        
        if ( !UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation)  ) {
            [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft] forKey:@"orientation"];
        }
    }
}

#pragma mark HKSlideMenu3DControllerDelegate methods
-(void)willOpenMenu{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)didOpenMenu{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)willCloseMenu{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)didCloseMenu{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
