//
//  JsonUtils.swift
//  Invisionapp
//
//  Created by Trang Tu on 7/14/16.
//  Copyright © 2016 codebox. All rights reserved.
//

import Foundation
class JsonUtils {
    
    static func createArrayJsonObjects (fromData : NSData) -> NSArray {
        var json = NSArray()
        do{
                json = try NSJSONSerialization.JSONObjectWithData(fromData, options:.AllowFragments) as! NSArray
        }catch {
                print("Error with Json: \(error)")
        }
        return json
    }
    
    static func check(){
        print("hello world")
    }


}