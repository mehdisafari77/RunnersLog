//
//  DetailVC.swift
//  RunnersLog
//
//  Created by Ivan Ramirez on 1/26/22.
//

import UIKit
import MapKit
import CoreLocation


class DetailVC: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var distanceTextField: UITextField!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var locationSwitch: UISwitch!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var myMapView: MKMapView!
    @IBOutlet weak var saveButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }


    //MARK: - Location
    /*
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {


            let userLocation: CLLocation = locations[0] as CLLocation
            //  print(" 😝 \(userLocation.description) 😝")

            let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)

            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))

            myMapView.setRegion(region, animated: true)

            // Get user's Current Location and drop a pin
            let annotation: MKPointAnnotation = MKPointAnnotation()

            let previousAnnotations = self.myMapView.annotations

            if !previousAnnotations.isEmpty {
                let annotations = myMapView.annotations.filter({ !($0 is MKUserLocation) })
                myMapView.removeAnnotations(annotations)
            }

            annotation.coordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude)

            annotation.title =  self.setUsersClosestLocation(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)

            annotation.subtitle = "This place rocks"

            myMapView.addAnnotation(annotation)
        }


    func setUsersClosestLocation(latitude: CLLocationDegrees, longitude: CLLocationDegrees) -> String {
            let geoCoder = CLGeocoder()
            let location = CLLocation(latitude: latitude, longitude: longitude)

            geoCoder.reverseGeocodeLocation(location) {
                (placeMarks, error) -> Void in

                guard let placeMark = placeMarks?.first else { return }

                let thFare = placeMark.thoroughfare ?? ""

                let subThFare = placeMark.subThoroughfare ?? ""

                self.currentLocation = "\(thFare), \(subThFare)"
            }

            return currentLocation
        }


    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error - locationManager: \(error.localizedDescription)")
    }

    func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else {return}

        let coordinateRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: metersPerHalfMile, longitudinalMeters: metersPerHalfMile)

        print(coordinateRegion.center)
        print(coordinateRegion)
        myMapView.setRegion(coordinateRegion, animated: true)
    }
    */

}
