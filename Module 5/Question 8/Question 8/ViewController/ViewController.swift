//
//  ViewController.swift
//  Question 8
//
//  Created by mac on 21/02/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit
var eData = [
    EntertainmentApp(sectionType: "BollyWood", imageGallery: ["1","2","3","4","5","6","1"]),
    EntertainmentApp(sectionType: "Hollywood", imageGallery: ["4","2","3","4","5","6","4"]),
    EntertainmentApp(sectionType: "Wood", imageGallery: ["3","2","3","4","5","6","3"]),
    EntertainmentApp(sectionType: "BollyWood", imageGallery: ["1","2","3","4","5","6","1"]),
    EntertainmentApp(sectionType: "Hollywood", imageGallery: ["4","2","3","4","5","6","4"]),
    EntertainmentApp(sectionType: "Wood", imageGallery: ["3","2","3","4","5","6","3"])
    
]
class ViewController: UIViewController {

    @IBOutlet weak var homeSwitch: UISwitch!
    @IBOutlet weak var homeTable: UITableView!
    @IBOutlet weak var homeSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTable.dequeueReusableCell(withIdentifier: "homecell", for: indexPath) as! TableViewCell
        cell.home_cv.tag = indexPath.section
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
    }
    
    
}
extension TableViewCell: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 160)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[home_cv.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = home_cv.dequeueReusableCell(withReuseIdentifier: "homeitem", for: indexPath) as! HomeCollectionViewCell
        cell.home_img.image = UIImage(named: eData[home_cv.tag].imageGallery[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "CollectionView", message: "_!_", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        let more = UIAlertAction(title: "MORE", style: .destructive, handler:
        nil )
        alert.addAction(ok)
        alert.addAction(more)
        
    }
    
}

