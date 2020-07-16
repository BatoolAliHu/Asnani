//
//  AppointmentVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit
var selectedAppointment: [Appointment] =
    [ Appointment(Name: "", degreeTitle: "", date: "")]

class AppointmentVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func ifTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            selectedAppointment = nextAppintment
            performSegue(withIdentifier: "Next", sender: nil)

        case 1:
            selectedAppointment = lastAppintment
            performSegue(withIdentifier: "Next", sender: nil)

        default:
            print("Data Not Found")
        }
        
        
        
        
        // MARK: - Navigation
        
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as! NextAppointmentsList
//            vc.details = selectedAppointment
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        
        
    }
}
