//
//  SideMenuViewController.m
//  SideMenu
//
//  Created by Vincent on 2016/12/27.
//  Copyright © 2016年 Vincent. All rights reserved.
//

#import "SideMenuViewController.h"
#import "TestViewController.h"
#import "UIViewController+SideMenu.h"
@interface SideMenuViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *sourceArray;
@end

@implementation SideMenuViewController


#pragma mark lazy loading 
- (NSArray *)sourceArray{
    
    if (_sourceArray == nil) {
        _sourceArray = @[@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu",@"menu"];
    }
    
    return _sourceArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark tableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.sourceArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:@"SideMenuViewController"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"SideMenuViewController"];
    }
    
    
    cell.textLabel.text = self.sourceArray [indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 44;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self sideMenuSlideIn];
    
    
    [(UINavigationController*) [UIApplication sharedApplication].keyWindow.rootViewController  pushViewController:[TestViewController new] animated:YES];
    
    
}
@end
