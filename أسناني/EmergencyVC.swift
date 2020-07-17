//
//  EmergencyVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class EmergencyVC: UIViewController {

    var tag: Int = 0
    
    let segues = [
        3: "map",
        4: "hospital"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    @IBAction func ifTapped(_ sender: UIButton) {
        let segueName = segues[tag]
        performSegue(withIdentifier: segueName!, sender: nil)
    }
}


 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
// override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  
    
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
// }



