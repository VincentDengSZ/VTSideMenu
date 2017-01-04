//
//  UIViewControllerSideMenu.swift
//  TestVTSideMenu
//
//  Created by Vincent on 2016/12/26.
//  Copyright © 2016年 4dxm. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController{
    
    
    
    
    /// side menu slide out
    
    public func sideMenuSlideOut(){
        
        VTSideMenuManager.shareVTSideMenuManager.sideMenuSlideOut()
        
        
    }
    
    /// side menu slide in
    public func sideMenuSlideIn()  {
        
        
        VTSideMenuManager.shareVTSideMenuManager.sideMenuSlideIn()
        
    }
    
    
}
