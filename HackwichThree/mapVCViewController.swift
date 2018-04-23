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
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        
        centerMapOnLocation(location: initialLocation)
        
        //create an Restaurant object and set all the arguments to each of the three parameters
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate:
            CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        super.viewDidLoad()
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
