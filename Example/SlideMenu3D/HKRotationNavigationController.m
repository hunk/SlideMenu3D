//
//  HKRotationNavigationController.m
//  SlideMenu3D
//
//  Created by Edgar on 5/16/15.
//  Copyright (c) 2015 @hunk. All rights reserved.
//

#import "HKRotationNavigationController.h"

@interface HKRotationNavigationController ()

@end

@implementation HKRotationNavigationController

- (BOOL)shouldAutorotate {
    if (self.topViewController != nil)
        return [self.topViewController shouldAutorotate];
    else
        return [super shouldAutorotate];
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED < 90000
- (NSUInteger)supportedInterfaceOrientations {
    if (self.topViewController != nil)
        return [self.topViewController supportedInterfaceOrientations];
    else
        return [super supportedInterfaceOrientations];
}
#else
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if (self.topViewController != nil)
        return [self.topViewController supportedInterfaceOrientations];
    else
        return [super supportedInterfaceOrientations];
}
#endif

@end
