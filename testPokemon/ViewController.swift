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
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
       
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
            return parkingZoomCell
        default:
            let weatherZoomCell = tableView.dequeueReusableCell(withIdentifier: "WeatherZoomCell")!
            return weatherZoomCell
        }
    }
}
