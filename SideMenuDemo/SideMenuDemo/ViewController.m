//
//  ViewController.m
//  SideMenuDemo
//
//  Created by Vincent on 2016/12/27.
//  Copyright © 2016年 Vincent. All rights reserved.
//


#import "ViewController.h"
#import "UIViewController+SideMenu.h"
#import "SideMenuViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [VTSideMenuManager initSideMenuController:[SideMenuViewController new] width:250];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView{
    
    UIView*view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    self.view = view;
    view.backgroundColor = [UIColor blueColor];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self sideMenuSlideOut];
}


@end
