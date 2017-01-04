//
//  VTSideMenuManager.h
//  SideMenu
//
//  Created by Vincent on 2016/12/27.
//  Copyright © 2016年 Vincent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface VTSideMenuManager : NSObject
+(VTSideMenuManager*)shareVTSideMenuManager;

+ (void)initSideMenuController:(UIViewController*)sideMenuViewController width:(CGFloat)menuWidth;

- (BOOL)hasSideMenuViewContainer;

- (void)sideMenuSlideOut;
- (void)sideMenuSlideIn;
@end
