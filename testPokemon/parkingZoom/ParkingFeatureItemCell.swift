//
//  ParkingFeatureItemCell.swift
//  testPokemon
//
//  Created by 黃聖傑 on 2018/1/22.
//  Copyright © 2018年 findata. All rights reserved.
//

import UIKit

class ParkingFeatureItemCell: UICollectionViewCell {
   
    @IBOutlet private weak var height: NSLayoutConstraint!
    @IBOutlet private weak var aspect: NSLayoutConstraint!
    
    let screenSize = UIScreen.main.bounds.size
    override func awakeFromNib() {
        super.awakeFromNib()
        let xFactor = screenSize.width / 375
        height.constant = height.constant * xFactor
    }

}
