//
//  ViewController.swift
//  Question 3
//
//  Created by mac on 17/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl_nm: UILabel!
    
    @IBOutlet weak var txt_value: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btn_click(_ sender: Any)
    {
        lbl_nm.text = txt_value.text
        
    }
    
}

