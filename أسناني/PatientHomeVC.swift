//
//  PatientHomeVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class PatientHomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ifTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            performSegue(withIdentifier: "history", sender: nil)
        case 1:
            performSegue(withIdentifier: "file", sender: nil)
        case 2:
            performSegue(withIdentifier: "aldana", sender: nil)
        case 3:
            performSegue(withIdentifier: "emergency", sender: nil)
        case 4:
            performSegue(withIdentifier: "emergency", sender: nil)
        default:
            print("Data not found")
            
        }
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
