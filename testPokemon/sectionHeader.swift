//
//  sectionHeader.swift
//  testPokemon
//
//  Created by Justin Huang on 2018/1/23.
//  Copyright © 2018年 findata. All rights reserved.
//

import UIKit
import Foundation
import UIKit

//class sectionHeader: UIView {
//
//    // Connect the custom button to the custom class
//    @IBOutlet weak var view: UIView!
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setup()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        setup()
//    }
//
//    func setup() {
//        view = loadViewFromNib() as! UIView!
//        view.frame = bounds
//
//        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth,
//                                 UIViewAutoresizing.flexibleHeight]
//
//        addSubview(view)
//
//        // Add our border here and every custom setup
////        view.layer.borderWidth = 2
////        view.layer.borderColor = UIColor.white.cgColor
////        view.titleLabel!.font = UIFont.systemFont(ofSize: 40)
//    }
//
//    func loadViewFromNib() -> UIView! {
////        let bundle = Bundle(for: type(of: self))
//        let nib = UINib(nibName: String(describing: "sectionHeader"), bundle: nil)
//        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
//        return view
//    }
//}
class sectionHeader: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let view = addNib()
        view.frame = self.bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth,
                                 UIViewAutoresizing.flexibleHeight]
        self.addSubview(view)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        let view = addNib()
        view.frame = self.bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth,
                                 UIViewAutoresizing.flexibleHeight]
        self.addSubview(view)
    }
    func addNib()->UIView{
        let view = UINib(nibName: "sectionHeader", bundle: nil).instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
}

