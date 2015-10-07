//
//  HKSubViewController.m
//  SlideMenu3D
//
//  Created by Edgar on 4/6/15.
//  Copyright (c) 2015 @hunk. All rights reserved.
//

#import "HKSubViewController.h"
#import "HKAppDelegate.h"

@interface HKSubViewController ()

@end

@implementation HKSubViewController

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    BOOL valuePan = [HKAppDelegate mainDelegate].slideMenuVC.enablePan;
    self.enablePanButton.enabled = !valuePan;
    self.disablePanButton.enabled = valuePan;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)panAction:(UIButton *)sender {
    NSNumber *some = [NSNumber numberWithInteger:sender.tag];
    BOOL valuePan = [some boolValue];
    [[HKAppDelegate mainDelegate].slideMenuVC setEnablePan:valuePan];
    
    self.enablePanButton.enabled = !valuePan;
    self.disablePanButton.enabled = valuePan;
}

-(void)willRotateToInterfaceOrientation: (UIInterfaceOrientation)orientation duration:(NSTimeInterval)duration {
    
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED < 90000
- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskPortrait;
}
#else
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskPortrait;
}
#endif

@end
