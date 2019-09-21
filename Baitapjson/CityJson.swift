//
//  CityJson.swift
//  Baitapjson
//
//  Created by Nguyễn Minh Hiếu on 9/17/19.
//  Copyright © 2019 Nguyễn Minh Hiếu. All rights reserved.
//

import Foundation

class City : NSObject, Codable {
    var id : Int?
    var name : String?
    var country : String?
    var coord : late?
    init(id : Int,name : String,country : String,coord : late) {
        self.id = id
        self.name = name
        self.country = country
        self.coord?.lon = coord.lon
        self.coord?.lat = coord.lat
    }
}
struct late : Codable {
    var lon : Double
    var lat : Double
}
