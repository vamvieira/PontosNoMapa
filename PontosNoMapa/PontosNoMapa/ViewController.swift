//
//  ViewController.swift
//  PontosNoMapa
//
//  Created by Usuário Convidado on 24/10/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 41.890251, longitude: 12.492373)
        annotation.title = "Coliseu"
        annotation.subtitle = "Massacre dos Gladiadores"
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 300, longitudinalMeters: 300)
        mapView.setRegion(region, animated: true)
    }


}

