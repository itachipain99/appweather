//
//  Namecity.swift
//  Baitapjson
//
//  Created by Nguyễn Minh Hiếu on 9/19/19.
//  Copyright © 2019 Nguyễn Minh Hiếu. All rights reserved.
//

import Foundation

class Namecity {
    static let ch = Namecity()
    var name = [String]()
    
    func getNameOfCity() -> [String] {
        cityarr.forEach { (City) in
            name.append(City.name!.lowercased())
        }
        return name
    }
}
