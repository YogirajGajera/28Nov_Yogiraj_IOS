//
//  ViewController.swift
//  Question 6
//
//  Created by mac on 01/03/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arr = [""]
    override func viewDidLoad() {
        super.viewDidLoad()
        arr = ["one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen"]
    }
}
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return CGFloat(44 + (indexPath.row * 10))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lbl.text = arr[indexPath.row]
        return cell
    }
}

