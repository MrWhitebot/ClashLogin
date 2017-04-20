//
//  Personajes.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 20/4/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit

class Personajes: NSObject {
    
    var Carta:String?
    var Ataque:String?
    var Vida:Int?
    
    init(valores:[String:AnyObject]) {
        Carta=valores["Carta"] as? String
        Ataque=valores["Ataque"] as? String
        Vida=valores["Vida"] as? Int

        
    }

}
