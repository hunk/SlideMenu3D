//
//  HKRightMenu.h
//  SlideMenu3D
//
//  Created by Edgar on 10/6/15.
//  Copyright © 2015 @hunk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <HKSlideMenu3DController.h>

@interface HKRightMenu : UIViewController<UITableViewDataSource,UITableViewDelegate,HKSlideMenu3DControllerDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end
