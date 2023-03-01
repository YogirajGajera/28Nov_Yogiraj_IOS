//
//  ViewController.swift
//  Question 5
//
//  Created by mac on 17/01/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_1: UILabel!
    @IBOutlet weak var lbl_2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btn_click(_ sender: Any)
    {
      let alert = UIAlertController(title: "Login", message: "Enter Username And Password", preferredStyle: .alert)
        alert.addTextField { (txtname1) in
             txtname1.placeholder = "Enter Name1"
            txtname1.textAlignment = .center
        }
        alert.addTextField { (txtname2) in
            txtname2.placeholder = "Enter Name2"
            txtname2.textAlignment = .center
           
        }
        
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: {ACTION in
            self.lbl_1.text = alert.textFields?[0].text
            self.lbl_2.text = alert.textFields?[1].text
        })
        
        let cancel = UIAlertAction(title: "CANCEL", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
}

