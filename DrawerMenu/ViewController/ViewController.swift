//
//  ViewController.swift
//  DrawerMenu
//
//  Created by Trang Tu on 7/15/16.
//  Copyright © 2016 codebox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonDrawerMenu: UIButton!
    @IBOutlet weak var viewActionBar: UIView!
    @IBOutlet weak var someButton: UIButton!
    private var sideMenuController : MenuViewController?

    static let menuItems = [MenuItem(title: "Home") , MenuItem(title: "Game"), MenuItem(title: "Store")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuController = self.storyboard?.instantiateViewControllerWithIdentifier("tablemenu") as! MenuViewController
        let tableMenu = sideMenuController as! TableSideMenuController
        tableMenu.topMargin = viewActionBar.frame.origin.y + viewActionBar.frame.height
        tableMenu.addToSuper(self)
        tableMenu.items = ViewController.menuItems
        tableMenu.typeOfItemCell = "friendlyitem"
        tableMenu.isFullScreen = false
        tableMenu.durationShowing = 0.3
        tableMenu.menuTitle.text = "HelloWorld"
    }

    @IBAction func hanleSlideMenu(sender: UIButton) {
        if sender.tag == 10 {
            sender.tag = 0
            if let menu = self.sideMenuController {
                menu.close()
            }
            return
        }
        sender.tag = 10
        sideMenuController!.show()
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if sideMenuController!.isShowing {
            sideMenuController?.close()
        }
        print(event)
    }
    

}

