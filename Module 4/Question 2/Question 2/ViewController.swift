//
//  ViewController.swift
//  Question 2
//
//  Created by mac on 17/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func btn_logIn(_ sender: Any)
    {
        let alert = UIAlertController(title: "Success!", message: "You Are Successfully Logged In...🙂", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        let btn = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(btn)
    }
}
