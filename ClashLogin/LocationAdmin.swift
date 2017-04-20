//
//  LocationAdmin.swift
//  ClashLogin
//
//  Created by Manuel Blanco Suaña on 18/4/17.
//  Copyright © 2017 Manuel Blanco Suaña. All rights reserved.
//

import UIKit
import CoreLocation

class LocationAdmin: NSObject, CLLocationManagerDelegate{

    var locationManager:CLLocationManager?
    var delegate:LocationAdminDelegate?
    
    override init(){
        super.init()
        locationManager=CLLocationManager()
        locationManager?.delegate=self
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
    }
 
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:[CLLocation]){
    print("Mi posición en lat: ", locations[0].coordinate.latitude, "long:", locations[0].coordinate.longitude)
        delegate?.localizacionActualizada(coordenada: locations[0].coordinate)
    }
}
    protocol LocationAdminDelegate{
        func localizacionActualizada(coordenada:CLLocationCoordinate2D)
    }
    

