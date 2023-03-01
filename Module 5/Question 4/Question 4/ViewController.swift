//
//  ViewController.swift
//  Question 4
//
//  Created by mac on 01/03/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var arr = [""]
    var photo = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        arr = ["one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen"]
        photo = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14"]
            // Do any additional setup after loading the view.
    }
}

extension ViewController : UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.img.image = UIImage(named: photo[indexPath.row])
        cell.lbl.text = arr[indexPath.row]
        return cell
    }
}

