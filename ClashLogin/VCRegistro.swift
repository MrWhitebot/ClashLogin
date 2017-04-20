//
//  VCRegistro.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 25/3/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit
import FirebaseAuth

class VCRegistro: UIViewController {

    @IBOutlet var userTExtField: UITextField!
    
    @IBOutlet var passTextField: UITextField!
    
    @IBOutlet var repassTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayMyAlertMessage1(){
        
        let myAlert = UIAlertController(title: "Campos Vacios", message: "Rellene todos los campos.", preferredStyle: .alert)
        let btnOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        myAlert.addAction(btnOk)
        
        present(myAlert, animated: true, completion: nil)
    }
    
    func displayMyAlertMessage2() {
        let myAlert2 = UIAlertController(title: "Contraseñas no coinciden", message: "Inserte de nuevo.", preferredStyle: .alert)
        let btnOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        myAlert2.addAction(btnOk)
        
        present(myAlert2, animated: true, completion: nil)
        
    }
    

    @IBAction func btnReg(_ sender: UIButton) {
        FIRAuth.auth()?.createUser(withEmail: (userTExtField?.text)!, password: (passTextField?.text)!) { (user, error) in
            if (error==nil){
                self.performSegue(withIdentifier: "irInicioRegistro", sender: self)
            }else{
                print("ERROR EN REGISTRO: ", error!)
            }
        }

        if (userTExtField.text == "" || passTextField.text == "" || repassTextField.text == ""){
            displayMyAlertMessage1()
        }
        
        else if (passTextField.text != repassTextField.text) {
           displayMyAlertMessage2()
        } else {
            
            DataHolder.sharedInstance.username = userTExtField.text!
            
            DataHolder.sharedInstance.password = passTextField.text!
            
            performSegue(withIdentifier: "irInicioRegistro", sender: nil)
            
        }
        
        }
    }

