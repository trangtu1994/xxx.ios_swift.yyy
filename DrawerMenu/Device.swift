//
//  Device.swift
//  DrawerMenu
//
//  Created by Trang Tu on 7/15/16.
//  Copyright © 2016 codebox. All rights reserved.
//

import UIKit
class Device {

    
    private static var bound = UIScreen.mainScreen().bounds
    static var width : CGFloat {
        return Device.bound.width
    }
    
    static var height : CGFloat {
        return Device.bound.height
    }

}