//
//  NSObjectExtension.swift
//  testPokemon
//
//  Created by Justin Huang on 2018/1/25.
//  Copyright © 2018年 findata. All rights reserved.
//

import Foundation
extension NSObject{
    func stringOfClassName()->String{
        return String(describing: type(of: self))
    }
}

