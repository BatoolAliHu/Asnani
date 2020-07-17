//
//  NextAppointmentsList.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class NextAppointmentsList: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
var details: Appointment!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AppointmentCell
    cell.name1Lable.text = selectedAppointment[indexPath.row].Name
        cell.name2Lable.text = selectedAppointment[indexPath.row].degreeTitle
        cell.dateLable.text = selectedAppointment[indexPath.row].date

               // Configure the cell...
               cell.textLabel?.text = ""
               return cell
        
    }
    

    @IBOutlet weak var tableView: UITableView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
