//
//  TableViewCell.swift
//  Question 8
//
//  Created by mac on 27/02/23.
//  Copyright © 2023 mac. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_homecat: UILabel!
    @IBOutlet weak var btn_seeAll: UIButton!
    @IBOutlet weak var home_cv: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        home_cv.delegate = self
        home_cv.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
