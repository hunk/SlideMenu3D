//
//  HKViewController.m
//  SlideMenu3D
//
//  Created by @hunk on 04/06/2015.
//  Copyright (c) 2014 @hunk. All rights reserved.
//

#import "HKViewController.h"
#import "HKAppDelegate.h"
#import "HKSubViewController.h"

@interface HKViewController ()

@end

@implementation HKViewController

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    BOOL valuePan = [HKAppDelegate mainDelegate].slideMenuVC.enablePan;
    self.enablePanButton.enabled = !valuePan;
    self.disablePanButton.enabled = valuePan;
}

- (IBAction)menuAction:(id)sender {
    [[HKAppDelegate mainDelegate].slideMenuVC toggleMenu];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addSubviewAction:(UIButton *)sender {
    

    HKSubViewController *subVC = [self.storyboard instantiateViewControllerWithIdentifier:@"HKSubViewController"];
    [self.navigationController pushViewController:subVC animated:YES];
}

- (IBAction)panAction:(UIButton *)sender {
    NSNumber *some = [NSNumber numberWithInteger:sender.tag];
    BOOL valuePan = [some boolValue];
    [[HKAppDelegate mainDelegate].slideMenuVC setEnablePan:valuePan];
    
    self.enablePanButton.enabled = !valuePan;
    self.disablePanButton.enabled = valuePan;
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED < 90000
- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}
#else
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}
#endif

- (BOOL)shouldAutorotate {
    return YES;
}


- (IBAction)toogleMenu:(UIButton *)sender {
    BOOL rightside = false;
    if ([sender.currentTitle isEqualToString:@"Menu in right side"]) {
        [sender setTitle:@"Menu in left side" forState:UIControlStateNormal];
        rightside = true;
    }else{
        [sender setTitle:@"Menu in right side" forState:UIControlStateNormal];
    }
    
    [[HKAppDelegate mainDelegate] toogleSideMenu:rightside];
}


@end
