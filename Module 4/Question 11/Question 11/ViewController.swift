//
//  ViewController.swift
//  Question 11
//
//  Created by mac on 03/02/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt1: UITextField!
    var coursepkr = UIPickerView()
    var course = [""]
    override func viewDidLoad() {
            super.viewDidLoad()
            self.coursepkr.dataSource = self
            self.coursepkr.delegate = self
            course = ["IOS","JAVA","PYTHON","ANDROID"]
            txt1.inputView=coursepkr
            
        }
        
        
    }
    
    extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate {
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return course.count
        }
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return course[row]
        }
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            txt1.text=course[row]
            txt1.isUserInteractionEnabled=false
            view.endEditing(true)
        }
}
