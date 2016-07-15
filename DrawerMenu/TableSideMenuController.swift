//
//  TableSideMenuController.swift
//  DrawerMenu
//
//  Created by Trang Tu on 7/15/16.
//  Copyright © 2016 codebox. All rights reserved.
//

import UIKit
class TableSideMenuController : MenuViewController {

    var items = [MenuItem] ()
    var typeOfItemCell = "menuCell"
    @IBOutlet weak var menuTitle: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func show() {
        super.show()
    }
    
    func sideMenuTitle (title : String) {
        menuTitle.text = title
    }
    
}

extension TableSideMenuController : UITableViewDataSource, UITableViewDelegate {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(typeOfItemCell, forIndexPath: indexPath) as! MenuItemCell
        cell.addData(items[indexPath.row])
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.close()
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! IconMenuItem
        cell.itemClicked(items[indexPath.row].title)
    }
}

protocol MenuItemClick {
    
}
