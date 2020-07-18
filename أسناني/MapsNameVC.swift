//
//  MapsNameVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/16/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class MapsNameVC: UIViewController {
    var hospital: [String]!
    var name1 : String!
    var name2 : String!


    @IBOutlet weak var map1: UIButton!
    @IBOutlet weak var map2: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print(name2,name1)
        
        
        // Do any additional setup after loading the view.
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
