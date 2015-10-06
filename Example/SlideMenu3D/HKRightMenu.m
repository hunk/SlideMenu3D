//
//  HKRightMenu.m
//  SlideMenu3D
//
//  Created by Edgar on 10/6/15.
//  Copyright © 2015 @hunk. All rights reserved.
//

#import "HKRightMenu.h"
#import "HKAppDelegate.h"

@interface HKRightMenu () {
    NSArray *images;
    NSArray *titles;
}

@end

@implementation HKRightMenu

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    images = @[@"mail-ico",@"call-ico",@"camera-ico",@"contacts-ico",@"weather-ico",@"settings-ico"];
    titles = @[@"Mail",@"Call",@"Camera",@"Contacts",@"Weather",@"Settings"];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = [UIColor clearColor];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return images.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"CellIdentifier";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    /* Ugly fix to aling all to the righ side */
    cell.contentView.transform = CGAffineTransformMakeScale(-1,1);
    cell.imageView.transform = CGAffineTransformMakeScale(-1,1);
    cell.textLabel.transform = CGAffineTransformMakeScale(-1,1);
    cell.textLabel.textAlignment = NSTextAlignmentRight; // optional
    
    cell.textLabel.text = [titles objectAtIndex:indexPath.row];
    
    UIFont *currentFont = cell.textLabel.font;
    UIFont *correctFont = [UIFont fontWithName:currentFont.fontName size:currentFont.pointSize+5];
    cell.textLabel.font = correctFont;
    
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.imageView.image = [UIImage imageNamed:[images objectAtIndex:indexPath.row]];
    cell.contentView.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    [cell setBackgroundColor:[UIColor clearColor]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%s", __PRETTY_FUNCTION__);
//    return;
    if (indexPath.row % 2) {
        [[HKAppDelegate mainDelegate] setSecondView];
    }else{
        [[HKAppDelegate mainDelegate] setFirstView];
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
