//
//  PatientInformationVC.swift
//  أسناني
//
//  Created by Batool Hussain on 7/13/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class PatientInformationVC: UIViewController {
    
    @IBOutlet weak var birthDateTextField: UITextField!
    
    @IBOutlet weak var bloodTypeTextField: UITextField!
    
    
    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var governorateTextField: UITextField!
    
    @IBOutlet weak var areaTextField: UITextField!
    
    
    
    let datePicker = UIDatePicker()
    
    var bloodTypePickerView = UIPickerView()
    var genderPickerView = UIPickerView()
    var governoratePickerView = UIPickerView()
    var areaPickerView = UIPickerView()
    
    
    
    
    
    override func viewDidLoad() {
        
        createDatePicker()
        super.viewDidLoad()
        inputs()
        placeholders()
        aignments()
        delegate()
        tags()
        areaPicker()
        
        let toolBar = UIToolbar().ToolbarPiker(mySelect: #selector(PatientInformationVC.dismissPicker))
        
        birthDateTextField.inputAccessoryView = toolBar
        bloodTypeTextField.inputAccessoryView = toolBar
        genderTextField.inputAccessoryView = toolBar
        governorateTextField.inputAccessoryView = toolBar
        areaTextField.inputAccessoryView = toolBar
        
        
    }
    
    func inputs(){
        bloodTypeTextField.inputView = bloodTypePickerView
        genderTextField.inputView = genderPickerView
        governorateTextField.inputView = governoratePickerView
        areaTextField.inputView = areaPickerView
        
    }
    
    func placeholders(){
        bloodTypeTextField.placeholder = "فصيلة الدم"
        genderTextField.placeholder = "الجنس"
        governorateTextField.placeholder = "المحافظة"
        areaTextField.placeholder = "المنطقة"
    }
    
    func aignments(){
        bloodTypeTextField.textAlignment =  .center
        genderTextField.textAlignment =  .center
        governorateTextField.textAlignment =  .center
        areaTextField.textAlignment =  .center
    }
    
    func delegate() {
        bloodTypePickerView.delegate = self
        bloodTypePickerView.dataSource = self
        genderPickerView.delegate = self
        genderPickerView.dataSource = self
        governoratePickerView.delegate = self
        governoratePickerView.dataSource = self
        areaPickerView.delegate = self
        areaPickerView.dataSource = self
    }
    
    func tags(){
        bloodTypePickerView.tag = 1
        genderPickerView.tag = 2
        governoratePickerView.tag = 3
        areaPickerView.tag = 4
    }
    
    
    func areaPicker(){
        let area = [ governoratePickerView : "حولي" , areaPickerView : hawaliArray] as [UIPickerView : Any]
    }
    
    @IBAction func next(_ sender: UIButton) {
        if
            birthDateTextField.text == "" ||
                bloodTypeTextField.text == "" ||
                genderTextField.text == "" ||
                governorateTextField.text == ""
            //                ||
            //                areaTextField.text == ""
        {
            
            let alertControllar = UIAlertController(title: nil, message: "أكمل البيانات المطلوبة", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "أكمل", style: .default) { (alert) in }
            
            alertControllar.addAction(restartAction)
            
            present(alertControllar, animated: true, completion: nil)
            
        }else {
            String.popAlert(presenter: self , Title: "", message: "تم التسجيل بنجاح" , when: 3 , firsthandler: {_ in
                // performSegue(withIdentifier: "Next", sender: nil)
                
            }, secondhandler: {
                
                self.performSegue(withIdentifier: "Next", sender: nil)
                
            })
        }
        //performSegue(withIdentifier: "Next", sender: nil)
    }
    
    @objc func dismissPicker() {
        
        view.endEditing(true)
        
    }
    
}
var selectedDate = ""

extension PatientInformationVC: UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return bloodType.count
        case 2:
            return gender.count
        case 3:
            return governorate.count
            
        default:
            return 1
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return bloodType[row]
        case 2:
            return gender[row]
        case 3:
            return governorate[row]
            
        default:
            return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        //           bloodTypeTextField.inputAccessoryView = toolbar
        
        switch pickerView.tag {
        case 1:
            bloodTypeTextField.text = bloodType[row]
            //            bloodTypeTextField.resignFirstResponder()
            bloodTypeTextField.inputAccessoryView = toolbar
        case 2:
            genderTextField.text = gender[row]
            //            genderTextField.resignFirstResponder()
            genderTextField.inputAccessoryView = toolbar
        case 3:
            governorateTextField.text = governorate[row]
            //            governorateTextField.resignFirstResponder()
            governorateTextField.inputAccessoryView = toolbar
            
            if row == 1 {
//                areaPickerView == hawaliArray.
            }
            
        default:
            return
        }
    }
    
    
    func createDatePicker(){
        birthDateTextField.textAlignment = .center
        let toolbar = UIToolbar().ToolbarPiker(mySelect: #selector(PatientInformationVC.dismissPicker))
        
        //      let toolbar = UIToolbar()
        toolbar.sizeToFit()
        //
        //        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        //        toolbar.setItems([doneBtn], animated: true)
        birthDateTextField.inputAccessoryView = toolbar
        
        birthDateTextField.inputView = datePicker
        
        datePicker.datePickerMode = .date
     
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
       formatter.timeStyle = .none
    
//        toolbar.barPosition.rawValue
        birthDateTextField.text = formatter.string(from: datePicker.date)
        
    }
    
    @objc func donePressed(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        birthDateTextField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
        
    }
    
    //        func doneBtn() {
    //          let toolbar = UIToolbar()
    //          toolbar.sizeToFit()
    //            let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
    //            toolbar.setItems([doneBtn], animated: true)
    //            bloodTypeTextField.inputAccessoryView = toolbar
    //            genderTextField.inputAccessoryView = toolbar
    //            governorateTextField.inputAccessoryView = toolbar
    //            areaTextField.inputAccessoryView = toolbar
    //
    //        }
    //
}

extension String {
    static func popAlert(presenter: UIViewController, Title: String , message: String, when: Double = 0 ,firsthandler: @escaping (UIAlertAction) -> (Void) = {_ in } , secondhandler: @escaping () -> (Void) = { })
    {
        let alertController = UIAlertController(title: Title, message: message, preferredStyle: .alert)
        //        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: firsthandler)
        //        alertController.addAction(okAction)
        presenter.present(alertController, animated: true)
        if(when != 0){
            var whenn = DispatchTime.now() + when
            DispatchQueue.main.asyncAfter(deadline: whenn){
                alertController.dismiss(animated: true, completion: secondhandler)
            }
        }
    }
}





