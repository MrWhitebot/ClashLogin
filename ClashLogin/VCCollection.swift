//
//  VCCollection.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 26/3/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit

class VCCollection: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var colListado:UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CVCMiCelda2 = collectionView.dequeueReusableCell(withReuseIdentifier: "MiCelda2", for: indexPath)as! CVCMiCelda2
        if (indexPath.row==0){
            cell.lblnombre?.text="Manuel"
            cell.imgvMain?.image=UIImage(named: "clashroyalelogo.png")
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
