//
//  HKMenuView.h
//  SlideMenu3D
//
//  Created by Edgar on 4/6/15.
//  Copyright (c) 2015 @hunk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <HKSlideMenu3DController.h>

@interface HKMenuView : UIViewController<UITableViewDataSource,UITableViewDelegate,HKSlideMenu3DControllerDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end
