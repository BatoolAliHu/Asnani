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
    var seleactedLoc: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showHospitalLocation(hospitalLocArray: hospitalsInfo, selectedLoc: seleactedLoc)
//        westSalmiyaHospital()
//        alAhqaqeeHospital()
//        hamadAlsaqerHospital()
    }
    
    func showHospitalLocation(hospitalLocArray: [hospitalLocations], selectedLoc: String){
        var hospital: hospitalLocations = hospitalLocations(hospitalName: "", lon: 0.0, lat: 0.0, subtitle: "")
        for i in 0..<hospitalLocArray.count{
            if hospitalLocArray[i].hospitalName  == selectedLoc {
                hospital = hospitalLocArray[i]
            }
            
        }
        
        
        
        print("hospital", hospital)
        
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: hospital.lat, longitude: hospital.lon)
        annontation.title = hospital.hospitalName
        annontation.subtitle = hospital.subtitle
               maoView.addAnnotation(annontation)
               
               let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 250, longitudinalMeters: 250)
               maoView.setRegion(region, animated: true)
        
    }
    
    
    
    
//   Hawalii
    
    func hajiHaiderHospital(){
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 29.3160753, longitude: 48.0328525)
        annontation.title = "مركز محمود حاجي حيدر"
        annontation.subtitle = "طوارئ محافظة حولي"
        maoView.addAnnotation(annontation)
        
        let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
        maoView.setRegion(region, animated: true)
    }
    func westSalmiyaHospital(){
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 29.3312366, longitude: 48.0504375)
        annontation.title = "مركز السالمية الغربي"
        annontation.subtitle = "طوارئ محافظة حولي"
        maoView.addAnnotation(annontation)
        
        let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
        maoView.setRegion(region, animated: true)
    }
    
    
//    Capital
    func alAhqaqeeHospital(){
           let annontation = MKPointAnnotation()
           annontation.coordinate = CLLocationCoordinate2D(latitude: 29.3617367, longitude: 48.011933)
           annontation.title = "مركز الإحقاقي"
           annontation.subtitle = "طوارئ محافظة العاصمة"
           maoView.addAnnotation(annontation)
           
           let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
           maoView.setRegion(region, animated: true)
       }
    func hamadAlsaqerHospital(){
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 29.3331551, longitude: 47.9862488)
        annontation.title = "مركز حمد الصقر"
        annontation.subtitle = "طوارئ محافظة العاصمة"
        maoView.addAnnotation(annontation)
        
        let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
        maoView.setRegion(region, animated: true)
    }
    
//    al-ahmidii
    func fahaheelHospital(){
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 29.0805769, longitude: 48.1163643)
        annontation.title = "مركز الفحيحيل التخصصي"
        annontation.subtitle = "طوارئ محافظة الأحمدي"
        maoView.addAnnotation(annontation)
        
        let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
        maoView.setRegion(region, animated: true)
    }
    
////    func fahaheelHospital(){
//           let annontation = MKPointAnnotation()
//           annontation.coordinate = CLLocationCoordinate2D(latitude: 29.0805769, longitude: 48.1163643)
//           annontation.title = "مركز الفحيحيل التخصصي"
//           annontation.subtitle = "طوارئ محافظة الأحمدي"
//           maoView.addAnnotation(annontation)
//
//           let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
//           maoView.setRegion(region, animated: true)
//       }
//
//
//
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
