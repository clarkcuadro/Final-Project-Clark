//
//  mapVCViewController.swift
//  HackwichThree
//
//  Created by CM Student on 4/23/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class mapVCViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    //set initial location to UHWO
    let initialLocation = CLLocation(latitude: 21.361888 , longitude: -158.055725)
    //set region around UHWO to 1000m
    let regionRadius: CLLocationDistance = 10000
    
    
    
    
    
    override func viewDidLoad() {
        
        centerMapOnLocation(location: initialLocation)
        
        //create an Restaurant object and set all the arguments to each of the three parameters
        let restaurantOne = Restaurant(title: "American", type: "Kalapawai", coordinate:
            CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        super.viewDidLoad()
        
        let restaurantTwo = Restaurant(title: "Japanese", type: "Sushi Bay", coordinate: CLLocationCoordinate2D(latitude: 21.3398, longitude: -158.0782))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurant(title: "Mexican", type: "El Fuego", coordinate: CLLocationCoordinate2D(latitude: 21.3445, longitude: -158.1156))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Restaurant(title: "Japanese", type: "Agu Ramen", coordinate: CLLocationCoordinate2D(latitude: 21.3382, longitude: -158.0809))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Restaurant(title: "Filipino", type: "Julie'z", coordinate: CLLocationCoordinate2D(latitude: 21.3380, longitude: -158.0804))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Restaurant(title: "Japanese", type: "Okome Hawaii", coordinate: CLLocationCoordinate2D(latitude: 21.3336, longitude: -158.0517))
        mapView.addAnnotation(restaurantSix)
        
        
        // Do any additional setup after loading the view.
    }
    func centerMapOnLocation(location: CLLocation){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius,regionRadius )
        mapView.setRegion(coordinateRegion, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
