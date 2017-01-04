//
//  VTSideMenuManager.swift
//  HauyanSwift
//
//  Created by Vincent on 2016/12/26.
//  Copyright © 2016年 4dxm. All rights reserved.
//

import UIKit

public class VTSideMenuManager{
    
    
    var sideMenuViewController:UIViewController?
    
    lazy private var sideMenuViewContainer = UIView(frame: CGRect(x: -UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
    private var sliding = false
    
    
    static let shareVTSideMenuManager = VTSideMenuManager()
    
    private init() {
        
    }
    
    
    static  public func initSideMenu(sideMenu sideMenuViewController:UIViewController, width menuWidth :CGFloat)  {
        
        
        sideMenuViewController.view.frame  = CGRect(x:0, y: 0, width: menuWidth, height: UIScreen.main.bounds.size.height)
        sideMenuViewController.view.layer.masksToBounds = true
        
        let sideRightBtn = UIButton(frame: CGRect(x: menuWidth, y: 0, width: UIScreen.main.bounds.size.width-menuWidth, height: UIScreen.main.bounds.size.height))
        sideRightBtn.backgroundColor = UIColor.clear
        
        
        shareVTSideMenuManager.sideMenuViewContainer .addSubview(sideRightBtn)
        
        shareVTSideMenuManager.sideMenuViewContainer .addSubview(sideMenuViewController.view)
        shareVTSideMenuManager.sideMenuViewContainer.backgroundColor = UIColor.clear
        
        shareVTSideMenuManager.sideMenuViewController = sideMenuViewController
        
        sideRightBtn.addTarget(shareVTSideMenuManager, action: #selector(VTSideMenuManager.sideMenuRightBtnDidClick(_:)), for: UIControlEvents.touchUpInside)
    }
    
    
    //MARK: private func
    @objc func sideMenuRightBtnDidClick(_ btn:UIButton){
        
        sideMenuSlideIn()
    }
    
    
    //MARK :public func
    
    
    
    func sideMenuSlideOut(){
        assert(VTSideMenuManager.shareVTSideMenuManager.sideMenuViewController != nil, "sideMenu can not be nil !!!")
        if sideMenuViewContainer.superview == nil {
            UIApplication.shared.keyWindow?.addSubview(sideMenuViewContainer)
        }
        
        
        
        if sliding == true {
            
            return
        }
        
        sliding = true
        
        
        
        
        
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.sideMenuViewContainer.layer.setAffineTransform(CGAffineTransform(translationX: UIScreen.main.bounds.size.width, y: 0))
            
            
        }) { (finished) in
            
            self.sliding = false
            
        }
        
        
        
    }
    
    
    func sideMenuSlideIn()  {
        assert(VTSideMenuManager.shareVTSideMenuManager.sideMenuViewController != nil, "sideMenu can not be nil !!!")
        if sliding == true {
            
            return
        }
        
        sliding = true;
        UIView.animate(withDuration: 0.3, animations: {
            
            self.sideMenuViewContainer.layer.setAffineTransform(CGAffineTransform(translationX: -UIScreen.main.bounds.size.width, y: 0))
            
        }) { (finished) in
            self.sliding = false
        }
    }
    
    
    
    
    
}
