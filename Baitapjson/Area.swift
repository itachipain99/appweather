//
//  Area.swift
//  Baitapjson
//
//  Created by Nguyễn Minh Hiếu on 9/20/19.
//  Copyright © 2019 Nguyễn Minh Hiếu. All rights reserved.
//

import Foundation

class Area {
    static let ar = Area()
    var coor = [late]()
    func getAreacity()-> [late]{
        cityarr.forEach{(City) in
            coor.append(City.coord!.self)
        }
        return coor
    }
}
