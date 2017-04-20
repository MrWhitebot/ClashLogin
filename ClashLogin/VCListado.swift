//
//  VCListado.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 25/3/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class VCListado: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tbMiTabla:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DataHolder.sharedInstance.firDataBaseRef.child("Personajes").observe(FIRDataEventType.value, with: { (snapshot) in
            
            var arTemp = snapshot.value as? Array<AnyObject>
            let personaje0 = arTemp?[0] as? [String:AnyObject]
            print("EL PERSONAJE EN LA POSICION 0 ES: ", personaje0)
            // print("Lo Descargado es: ",snapshot.value!)
            
        })        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "MiCelda1")as! TVCMiCelda
        if (indexPath.row==0){
            cell.lblnombre?.text="Manuel"
            cell.imageView?.image = #imageLiteral(resourceName: "Mago")
        }
        else if(indexPath.row==1){
            cell.lblnombre?.text="Ram"
            cell.imageView?.image = #imageLiteral(resourceName: "Sab")
        }
        else if(indexPath.row==2){
            cell.lblnombre?.text="Sergio"
            cell.imageView?.image = #imageLiteral(resourceName: "bbd")
        }
        else if(indexPath.row==3){
            cell.lblnombre?.text="Carlos"
            cell.imageView?.image = #imageLiteral(resourceName: "Min")
        }
        else if(indexPath.row==4){
            cell.lblnombre?.text="Tay"
            cell.imageView?.image = #imageLiteral(resourceName: "Prin")
        }
        else if(indexPath.row==5){
            cell.lblnombre?.text="Jorge"
            cell.imageView?.image = #imageLiteral(resourceName: "MdH")
        }
        else if(indexPath.row==6){
            cell.lblnombre?.text="David"
            cell.imageView?.image = #imageLiteral(resourceName: "melec")
        }
        else if(indexPath.row==7){
            cell.lblnombre?.text="Fran"
            cell.imageView?.image = #imageLiteral(resourceName: "bbd")
        }
        
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
