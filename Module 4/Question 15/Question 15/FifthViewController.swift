//
//  FifthViewController.swift
//  Question 15
//
//  Created by mac on 03/02/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    @IBOutlet weak var txt4: UITextField!
        var sttpkr = UIPickerView()
        var state = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        super.viewDidLoad()
        self.sttpkr.dataSource = self
        self.sttpkr.delegate = self
        state = ["New South Wales",
                 "Victoria",
                 "Queensland",
                 "Tasmania",
                 "South Australia",
                 "Western Australia",
                 "Northern Territory",
                 "Australian Capital Territory"]
        txt4.inputView = sttpkr
    }
}

extension FifthViewController:UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return state.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return state[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txt4.text = state[row]
        txt4.isUserInteractionEnabled = false
        view.endEditing(true)
    }
}
