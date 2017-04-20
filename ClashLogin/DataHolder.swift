//
//  DataHolder.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 26/3/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class DataHolder: NSObject {
    
    static let sharedInstance:DataHolder=DataHolder()
    var username: String?
    var password: String?
    var numCelCol:UInt=8
    var firDataBaseRef: FIRDatabaseReference!
    var locationAdmin:LocationAdmin?
    
    
    func initFireBase(){
        
    FIRApp.configure()
    firDataBaseRef = FIRDatabase.database().reference()
        
    }
    func initlocationAdmin(){
        locationAdmin=LocationAdmin()
    }
    }
    

