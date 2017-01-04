//
//  UIViewController+SideMenu.m
//  SideMenu
//
//  Created by Vincent on 2016/12/27.
//  Copyright © 2016年 Vincent. All rights reserved.
//

#import "UIViewController+SideMenu.h"
#import "VTSideMenuManager.h"

@implementation UIViewController (SideMenu)

- (void)sideMenuSlideOut{
    NSAssert([[VTSideMenuManager shareVTSideMenuManager] hasSideMenuViewContainer], @"sideMenu can not be nil !!!");
    
    if ([[VTSideMenuManager shareVTSideMenuManager] hasSideMenuViewContainer]) {
        
        [[VTSideMenuManager shareVTSideMenuManager] sideMenuSlideOut];
    }

    
}

- (void)sideMenuSlideIn{
    NSAssert([[VTSideMenuManager shareVTSideMenuManager] hasSideMenuViewContainer], @"sideMenu can not be nil !!!");
    
    if ([[VTSideMenuManager shareVTSideMenuManager] hasSideMenuViewContainer]) {
        
        [[VTSideMenuManager shareVTSideMenuManager] sideMenuSlideIn];
    }

}
@end
