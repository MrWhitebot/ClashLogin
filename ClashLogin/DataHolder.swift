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
    
    var numCelCol:UInt=5
    
    func nombreDeCelda(numero:Int) -> NSString {
        if(numero==0){
            return "Manuel"
        }
        else if (numero==1){
            return "Ram"
        }
        else if (numero==2){
            return "Sergio"
        }
        else if(numero==3){
            return "Carlos"
        }else if(numero==4){
            return "Tay"
        }
        return ""
    }
    
}
