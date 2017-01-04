//
//  ViewController.swift
//  VTSideMenuSwiftDemo
//
//  Created by Vincent on 2017/1/4.
//  Copyright © 2017年 Vincent. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        VTSideMenuManager.initSideMenu(sideMenu: SideMenuViewController(), width: 250)

    }

    override func loadView() {
        
        self.view = UIView(frame: UIScreen.main.bounds)
        self.view.backgroundColor = UIColor.blue
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.sideMenuSlideOut()
    }
}

