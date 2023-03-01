//
//  ViewController.swift
//  Question 15
//
//  Created by mac on 03/02/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txt: UITextField!
        var cntpkr = UIPickerView()
        var country = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cntpkr.dataSource = self
        self.cntpkr.delegate = self
        country = ["India", "America", "Brazil", "Australia"]
        txt.inputView = cntpkr
       
    }
}

extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return country.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return country[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            let SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
            self.navigationController?.pushViewController(SecondViewController, animated: true)
        }
        else if row == 1 {
            let ThirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
            self.navigationController?.pushViewController(ThirdViewController, animated: true)
        }
        else if row == 2 {
            let FourthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
            self.navigationController?.pushViewController(FourthViewController, animated: true)
        }
        else if row == 3 {
            let FifthViewController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
            self.navigationController?.pushViewController(FifthViewController, animated: true)
        }
    }
    
}

