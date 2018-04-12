//
//  KMapVC.swift
//  Kwikkutz
//
//  Created by Steven on 4/12/18.
//  Copyright © 2018 Steven. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class KMapVC: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        // Do any additional setup after loading the view.
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
