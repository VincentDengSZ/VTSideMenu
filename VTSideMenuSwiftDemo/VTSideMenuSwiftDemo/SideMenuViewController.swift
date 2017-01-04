//
//  SideMenuViewController.swift
//  VTSideMenuSwiftDemo
//
//  Created by Vincent on 2017/1/4.
//  Copyright © 2017年 Vincent. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    private let sourceArray = ["menu","menu","menu","menu","menu","menu","menu","menu","menu","menu","menu","menu","menu","menu","menu","menu"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: tableviewDelegate,tableviewDatasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sourceArray.count;
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 44;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell =  tableView.dequeueReusableCell(withIdentifier: "SideMenuViewController")
        
        if cell == nil {
            
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "SideMenuViewController")
            
        }
        
        cell?.textLabel?.text = sourceArray[indexPath.row]
        
        return cell!;
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        (UIApplication.shared.keyWindow?.rootViewController as!UINavigationController) .pushViewController(TestViewController(), animated: true)
        self.sideMenuSlideIn()
        
        
        
        
        
    }
    
    
    
    //cell seperator will start from x:0 step 2
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if cell.responds(to: #selector(setter: cell.layoutMargins)) {
            
            cell.layoutMargins = UIEdgeInsets.zero
            
        }
        
        if cell.responds(to: #selector(setter: cell.separatorInset)) {
            cell.separatorInset = UIEdgeInsets.zero
        }
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
