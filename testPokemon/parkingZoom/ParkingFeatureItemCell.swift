//
//  ParkingFeatureItemCell.swift
//  testPokemon
//
//  Created by 黃聖傑 on 2018/1/22.
//  Copyright © 2018年 findata. All rights reserved.
//

import UIKit

class ParkingFeatureItemCell: UICollectionViewCell {
   
    @IBOutlet weak var width: NSLayoutConstraint!
    
    let screenSize = UIScreen.main.bounds.size
    override func awakeFromNib() {
        super.awakeFromNib()
       
        // Initialization code
//        widthConstraint.constant = screenSize.width * 80/375
//
    }

}
