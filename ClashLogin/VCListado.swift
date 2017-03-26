//
//  VCListado.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 25/3/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit

class VCListado: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tbMiTabla:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "MiCelda1")as! TVCMiCelda
        //cell.lblnombre?.text="Manuel"
        if (indexPath.row==0){
            cell.lblnombre?.text="Manuel"
        }
        else if(indexPath.row==1){
            cell.lblnombre?.text="Ram"
        }
        else if(indexPath.row==2){
            cell.lblnombre?.text="Sergio"
        }
        else if(indexPath.row==3){
            cell.lblnombre?.text="Carlos"
        }
        else if(indexPath.row==4){
            cell.lblnombre?.text="Tay"
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       print("He selccionado la posicion: ", indexPath.row)
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
