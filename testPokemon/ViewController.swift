//
//  ViewController.swift
//  testPokemon
//
//  Created by 黃聖傑 on 2018/1/8.
//  Copyright © 2018年 findata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var parkingZoomCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        parkingZoomCollectionView.delegate = self
        parkingZoomCollectionView.dataSource = self
        parkingZoomCollectionView.clipsToBounds = false
        parkingZoomCollectionView.register(UINib.init(nibName: "parkingStatusCell", bundle: nil), forCellWithReuseIdentifier: "parkingStatusCell")
        parkingZoomCollectionView.register(UINib.init(nibName: "ParkingFeatureItemCell", bundle: nil), forCellWithReuseIdentifier: "ParkingFeatureItemCell")
        if let collectionFlowLayout = parkingZoomCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
             collectionFlowLayout.estimatedItemSize = CGSize(width: 1, height: 1)
        }
       
//        let htmlText = "<font color=\"red\">hello</font><font color=\"blue\">world</font><font color=\"red\">!!!!</font>"
//        
//        if let htmlData = htmlText.data(using: String.Encoding.unicode) {
//            do {
//                let attributedText = try NSAttributedString(data: htmlData, options: [NSAttributedString.DocumentReadingOptionKey.documentType:NSAttributedString.DocumentType.html], documentAttributes: nil)
//                htmlLabel.attributedText = attributedText
//            } catch let e as NSError {
//                print("Couldn't translate \(htmlText): \(e.localizedDescription) ")
//            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0 :
            let weatherZoomCell = tableView.dequeueReusableCell(withIdentifier: "WeatherZoomCell")!
            return weatherZoomCell
        case 1:
            let parkingZoomCell = tableView.dequeueReusableCell(withIdentifier: "ParkingZoomCell")!
            let contentView = parkingZoomCell.contentView
            contentView.addSubview(parkingZoomCollectionView)
            parkingZoomCollectionView.translatesAutoresizingMaskIntoConstraints = false
            parkingZoomCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
            parkingZoomCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
            parkingZoomCollectionView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            parkingZoomCollectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            return parkingZoomCell
        default:
            let weatherZoomCell = tableView.dequeueReusableCell(withIdentifier: "WeatherZoomCell")!
            return weatherZoomCell
        }
    }
}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
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
        case 1:
//            let parkingSupportCell = collectionView.dequeueReusableCell(withReuseIdentifier: "parkingSupportCell", for: indexPath)
//            return parkingSupportCell
            let parkingStatusCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ParkingFeatureItemCell", for: indexPath)
            return parkingStatusCell
        default:
            let parkingStatusCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ParkingFeatureItemCell", for: indexPath)
            return  parkingStatusCell
        }
    }
    
    
}
