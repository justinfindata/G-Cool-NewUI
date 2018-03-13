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
        print("第二次完成rollBack第一次commit")
        tableView.delegate = self
        tableView.dataSource = self
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
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = SectionHeader()
        return header
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellName = ""
        switch indexPath.row {
        case 0 :
            cellName = "AlertZoomCell"
        case 1:
            cellName = "ParkingZoomCell"
        default:
            cellName = "AlertZoomCell"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName)!
        return cell
    }
}
