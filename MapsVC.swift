//
//  MapsVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/16/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit
import MapKit
class MapsVC: UIViewController {

    @IBOutlet weak var maoView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hajiHaiderHospital()
    }
    
    func hajiHaiderHospital(){
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 29.3160753, longitude: 48.0328525)
        annontation.title = "مركز محمود حجي حيدر"
        annontation.subtitle = "طوارئ محافظة حولي"
        maoView.addAnnotation(annontation)
        
        let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
        maoView.setRegion(region, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
