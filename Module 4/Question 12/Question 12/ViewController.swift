//
//  ViewController.swift
//  Question 12
//
//  Created by mac on 03/02/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txt: UITextField!
    var dtpkr = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        txt.inputView=dtpkr
        dtpkr.datePickerMode = .dateAndTime
        dtpkr.addTarget(self, action: #selector(ViewController.selectdate), for: .valueChanged)
        
        }
    @objc func selectdate() {
        let dt=dtpkr.date
        let dtfrm = DateFormatter()
        dtfrm.dateStyle = DateFormatter.Style.long
        dtfrm.timeStyle = .medium
        dtfrm.dateFormat = "hh:mm a - dd/MM/yyyy"
        txt.text=dtfrm.string(from: dt)
        view.endEditing(true)
        
    }

}

