//
//  MenuItem.swift
//  DrawerMenu
//
//  Created by Trang Tu on 7/15/16.
//  Copyright © 2016 codebox. All rights reserved.
//

import UIKit
class MenuItemCell: UITableViewCell {


    @IBOutlet weak var itemTitle: UILabel!

    
    func addData (model : MenuItem)  {
        itemTitle.text = model.title
    }
}