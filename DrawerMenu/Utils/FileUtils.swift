//
//  FileUtils.swift
//  Invisionapp
//
//  Created by Trang Tu on 7/14/16.
//  Copyright © 2016 codebox. All rights reserved.
//

import Foundation
class FileUtils {

    static func readLocalJsonFile (name : String) -> NSData? {
        let pathOfFile = NSBundle.mainBundle().pathForResource(name, ofType: ".json")
        if pathOfFile != nil {
            return NSData(contentsOfFile: pathOfFile!)
        }
        return nil
    }
    
}