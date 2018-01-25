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
class SectionHeader: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let view = loadViewFromNib()
        view.frame = self.bounds
        self.addSubview(view)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        let view = loadViewFromNib()
        view.frame = self.bounds

        self.addSubview(view)
    }
    func loadViewFromNib()->UIView{
        let className = String(describing: type(of: self))
        let view = UINib(nibName: className, bundle: nil).instantiate(withOwner: self, options: nil).first as! UIView
        view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        return view
    }
}

