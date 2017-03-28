//
//  ViewController.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 25/3/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnLog: UIButton?
    @IBOutlet var txtUser: UITextField?
    @IBOutlet var txtPass: UITextField?
    @IBOutlet weak var lblError: UILabel!

    override func viewDidLoad() {
         super.viewDidLoad()
         lblError.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnLogin(_ sender: UIButton) {
        if (txtUser?.text! == DataHolder.sharedInstance.username && txtPass?.text! == DataHolder.sharedInstance.password){
            
            performSegue(withIdentifier: "irLoginCorrecto", sender: self)
            
        } else {
            
            lblError.text = "Usuario o Contraseña incorrectos"
        }
    }


}

