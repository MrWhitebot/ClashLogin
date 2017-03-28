//
//  DataHolder.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 26/3/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit

class DataHolder: NSObject {
    
    static let sharedInstance:DataHolder=DataHolder()
    
    var username: String?
    
    var password: String?
    
    var numCelCol:UInt=8
    
    }
    

