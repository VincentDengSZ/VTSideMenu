//
//  VTSideMenuManager.m
//  SideMenu
//
//  Created by Vincent on 2016/12/27.
//  Copyright © 2016年 Vincent. All rights reserved.
//

#import "VTSideMenuManager.h"


@implementation VTSideMenuManager{
    
    UIView *sideMenuViewContainer;
    BOOL sliding;
    UIViewController* sideMenuViewController;
}

+(VTSideMenuManager*)shareVTSideMenuManager{
    
    static dispatch_once_t onceToken;
    static VTSideMenuManager*shared = nil;
    dispatch_once(&onceToken, ^{
        
        shared = [[VTSideMenuManager alloc]init];
        
    });
    
    return shared;
}



+ (void)initSideMenuController:(UIViewController*)sideMenuViewController width:(CGFloat)menuWidth{
    
    
    
    sideMenuViewController.view.frame = CGRectMake(0, 0, menuWidth, [UIScreen mainScreen].bounds.size.height);
    sideMenuViewController.view.layer.masksToBounds = YES;
    
    

  
    
    UIButton*sideRightBtn = [[UIButton alloc]initWithFrame:CGRectMake(menuWidth, 0, [UIScreen mainScreen].bounds.size.width-menuWidth, [UIScreen mainScreen].bounds.size.height)];
    [sideRightBtn addTarget:[self shareVTSideMenuManager] action:@selector(sideMenuRightBtnDidClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self shareVTSideMenuManager]->sideMenuViewContainer = [[UIView alloc]initWithFrame:CGRectMake(-[UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self shareVTSideMenuManager]->sideMenuViewContainer.backgroundColor = [UIColor clearColor];
    [[self shareVTSideMenuManager]->sideMenuViewContainer addSubview:sideMenuViewController.view];
    [[self shareVTSideMenuManager]->sideMenuViewContainer addSubview:sideRightBtn];
    [self shareVTSideMenuManager]->sideMenuViewController = sideMenuViewController;
    
    
    
    
    
}
- (void)sideMenuRightBtnDidClick:(UIButton*)btn{
    [self sideMenuSlideIn];
}

- (void)sideMenuSlideOut{
    
    NSAssert([self hasSideMenuViewContainer], @"sideMenu can not be nil !!!");
    if (sideMenuViewContainer.superview==nil) {
        
        [[UIApplication sharedApplication].keyWindow addSubview:sideMenuViewContainer];
//        [[UIApplication sharedApplication].keyWindow.rootViewController addChildViewController:sideMenuViewController];
        
    }
    
    if (sliding) {
        
        return;
        
    }
    sliding = YES;
    
    [UIView animateWithDuration:0.3 animations:^{
       
        sideMenuViewContainer.layer.affineTransform = CGAffineTransformTranslate(sideMenuViewContainer.layer.affineTransform, [UIScreen mainScreen].bounds.size.width, 0);
//        sideMenuViewContainer.frame =  CGRectMake(0, 0, 100, 400);
    } completion:^(BOOL finished) {
        
        sliding = NO;
    }];
    
    
}

- (void)sideMenuSlideIn{
    NSAssert([self hasSideMenuViewContainer], @"sideMenu can not be nil !!!");
    if (sliding) {
        
        return;
        
    }
    sliding = YES;
    
    [UIView animateWithDuration:0.3 animations:^{
        
        sideMenuViewContainer.layer.affineTransform = CGAffineTransformTranslate(sideMenuViewContainer.layer.affineTransform, -[UIScreen mainScreen].bounds.size.width, 0);
    } completion:^(BOOL finished) {
        
        sliding = NO;
    }];

    
}
- (BOOL)hasSideMenuViewContainer{
    
    if (sideMenuViewContainer==nil) {
        return NO;
    }else{
        return  YES;
    }
}
@end
