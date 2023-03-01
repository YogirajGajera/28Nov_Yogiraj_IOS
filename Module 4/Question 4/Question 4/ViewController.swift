//
//  ViewController.swift
//  Question 4
//
//  Created by mac on 17/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btn_hide(_ sender: Any)
    {
        lbl_lbl.alpha = 0
    }
    
    @IBAction func btn_show(_ sender: Any)
    {
        lbl_lbl.alpha = 1
    }
}

