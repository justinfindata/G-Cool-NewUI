//
//  parkingStatusCellCollectionViewCell.swift
//  testPokemon
//
//  Created by 黃聖傑 on 2018/1/22.
//  Copyright © 2018年 findata. All rights reserved.
//

import UIKit

class parkingStatusCell: UICollectionViewCell {
    @IBOutlet weak var height: NSLayoutConstraint!
//    @IBOutlet weak var aspectConstraint: NSLayoutConstraint!
    let screenSize = UIScreen.main.bounds.size
    override func awakeFromNib() {
        super.awakeFromNib()
        let factor = screenSize.width / 375
        height.constant = height.constant * factor
    }

}
