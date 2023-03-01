//
//  ViewController.swift
//  Question 13
//
//  Created by mac on 03/02/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt: UITextField!
        var clrpkr = UIPickerView()
        var color = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clrpkr.dataSource = self
        self.clrpkr.delegate = self
        color = ["Red", "Black", "Green", "Blue"]
        txt.inputView = clrpkr
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return color[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            view.backgroundColor = UIColor.red
        }
        else if row == 1 {
            view.backgroundColor = UIColor.black
            }
        else if row == 2 {
            view.backgroundColor = UIColor.green
            }
        else if row == 3 {
            view.backgroundColor = UIColor.blue
            }
    }
    
}

