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
    @IBOutlet var txtMen: UITextView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func AccbtnLog(){
       //txtMen?.text="USUARIO INCORRECTO"
        //
       
        if txtUser?.text=="Manuel" && txtPass?.text=="12345"{
             self.performSegue(withIdentifier: "Log", sender: self)
        }else{
            txtMen?.text=String(format: "Usuario o contraseña Incorrectos", (txtUser?.text)!, (txtPass?.text)!)
         }
    }

}

