//
//  parkingZoomCell.swift
//  testPokemon
//
//  Created by Justin Huang on 2018/1/22.
//  Copyright © 2018年 findata. All rights reserved.
//

import UIKit

class parkingZoomCell: UITableViewCell {

    @IBOutlet weak var parkingZoomCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        parkingZoomCollectionView.delegate = self
        parkingZoomCollectionView.dataSource = self
        parkingZoomCollectionView.clipsToBounds = false
        parkingZoomCollectionView.register(UINib.init(nibName: "parkingStatusCell", bundle: nil), forCellWithReuseIdentifier: "parkingStatusCell")
        parkingZoomCollectionView.register(UINib.init(nibName: "ParkingFeatureItemCell", bundle: nil), forCellWithReuseIdentifier: "ParkingFeatureItemCell")
        if let flowLayout =  parkingZoomCollectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            flowLayout.estimatedItemSize = CGSize(width: 100.0, height: 100.0)
        }
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension parkingZoomCell:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0 :
            let parkingStatusCell = collectionView.dequeueReusableCell(withReuseIdentifier: "parkingStatusCell", for: indexPath)
            return parkingStatusCell
            //            let parkingStatusCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ParkingFeatureItemCell", for: indexPath)
            //            return parkingStatusCell
            //        case 1:
            //            let parkingSupportCell = collectionView.dequeueReusableCell(withReuseIdentifier: "parkingSupportCell", for: indexPath)
            //            return parkingSupportCell
            //            let parkingStatusCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ParkingFeatureItemCell", for: indexPath)
        //            return parkingStatusCell
        default:
            let parkingStatusCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ParkingFeatureItemCell", for: indexPath)
            return  parkingStatusCell
        }
    }
}

