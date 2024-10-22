//
//  Location.swift
//  Nova
//
//  Created by Apple on 28.6.24.
//

import UIKit
import MapKit
//import CoreLocation

class Location: UIViewController,CLLocationManagerDelegate {
//Outlets
    @IBOutlet weak var LocationMapView: MKMapView!
    
    
    //Properties
     let LocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSeleneLocationOnMap()
//        setupMapView()
//        setupLocationManager()
        
        
    }
    //Methods
//
//    func setupMapView() {
//        LocationMapView.mapType = .standard
//    }
//
//    func setupLocationManager() {
//        LocationManager.delegate = self
//        LocationManager.requestWhenInUseAuthorization()
//
//        if LocationManager.authorizationStatus == .authorizedWhenInUse {
//            LocationManager.startUpdatingLocation()
//           }
//        }
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if  let myCoordinate = manager.location?.coordinate {
//            let myLocation = MKPointAnnotation()
//            myLocation.coordinate = myCoordinate
//            myLocation.title = "Me!"
//            LocationMapView.addAnnotation(myLocation)
//            LocationMapView.showAnnotations(LocationMapView.annotations, animated: true)
//         }
//
//        }
//
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//            print("location update failed = \(error)")
//        }
    
    
    
    func addSeleneLocationOnMap() {
        let selene = MKPointAnnotation()
        selene.title = "Selene Restaurant"
        selene.coordinate = CLLocationCoordinate2D(latitude:42.671317, longitude:21.182835)
        selene.subtitle = "This is our restaurant"
        LocationMapView.addAnnotation(selene)
        
        let region = MKCoordinateRegion(center: selene.coordinate, latitudinalMeters:1000, longitudinalMeters: 1000)
        LocationMapView.setRegion(region, animated: false)
        
        
    }
}
