//
//  ViewController.swift
//  Question 9
//
//  Created by mac on 03/02/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var course = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        course = ["IOS","JAVA","PYTHON","ANDROID"]
        
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
}
