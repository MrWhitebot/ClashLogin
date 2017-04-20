//
//  Mapa.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 28/3/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class Mapa: UIViewController, MKMapViewDelegate {
// LocationAdminDelegate
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // DataHolder.sharedInstance.locationAdmin?.delegate=self
        mapView?.showsUserLocation=true
        mapView?.delegate = self
        var coordTemp:CLLocationCoordinate2D=CLLocationCoordinate2D()
        coordTemp.latitude = 40.4165000
        coordTemp.longitude = -3.7025600
        agregarPin(coordenada: coordTemp, titulo: "MADRID")
        var coordTemp2:CLLocationCoordinate2D=CLLocationCoordinate2D()
        coordTemp2.latitude = 41.5073
        coordTemp2.longitude = -5.7453
        agregarPin(coordenada: coordTemp2, titulo: "ZAMORA")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func agregarPin(coordenada: CLLocationCoordinate2D, titulo VarTitulo:String){
        
        let annotation: MKPointAnnotation = MKPointAnnotation()
        annotation.coordinate = coordenada
        annotation.title = VarTitulo
        mapView?.addAnnotation(annotation)
    }
    
   // func localizacionActualizada(coordenada: CLLocationCoordinate2D) {
   //     centralizarEnPosicion(coordenada: coordenada)
   // }
    //func centralizarEnPosicion(coordenada :CLLocationCoordinate2D){
      //  let region:MKCoordinateRegion = MKCoordinateRegion(center:coordenada, span:MKCoordinateSpan(latitudeDelta:0.5, longitudeDelta:0.5))
       // mapView?.setRegion(region, animated:true)
   // }
    
 //  func mapView(_ mapView:MKMapView, didUpdate userLocation:MKUserLocation){
    //    centralizarEnPosicion(coordenada: userLocation.coordinate)
   // }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
