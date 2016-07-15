//
//  ViewController.swift
//  DrawerMenu
//
//  Created by Trang Tu on 7/15/16.
//  Copyright © 2016 codebox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var sideMenuController : MenuViewController?
    
    @IBOutlet weak var buttonDrawerMenu: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var someButton: UIButton!

    @IBAction func someButton(sender: UIButton) {
        print ("hello")
    }
    @IBAction func hanleSlideMenu(sender: UIButton) {

        if sender.tag == 10 {
            sender.tag = 0
            if let menu = self.sideMenuController {
                menu.close()
            }
            return
        }
        
        // create menu
        sender.tag = 10
        sideMenuController = self.storyboard?.instantiateViewControllerWithIdentifier("tablemenu") as! MenuViewController
       let  tableMenu = sideMenuController as! TableSideMenuController
            tableMenu.topMargin = 100
            tableMenu.addToSuper(self)
            tableMenu.isFullScreen = false
            tableMenu.durationShowing = 1
            tableMenu.show()
        
    }

    

}

