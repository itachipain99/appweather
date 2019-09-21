//
//  ViewController.swift
//  Baitapjson
//
//  Created by Nguyễn Minh Hiếu on 9/15/19.
//  Copyright © 2019 Nguyễn Minh Hiếu. All rights reserved.
//

import UIKit
import SwiftyJSON

var cityarr = [City]() // top object

class ViewController: UIViewController {
    var namecity = [String]()
    var areacity = [late]()
    var insearchcity = [City]()
    @IBOutlet weak var nameofcity: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var ddd: UITextField!
    @IBOutlet weak var labelarea: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityarr = Readjson.shared.pasejson()
        namecity = Namecity.ch.getNameOfCity()
        areacity = Area.ar.getAreacity()
        ddd.addTarget(self, action: #selector(search1), for: .editingChanged)
    //    printArea()
        // Do any additional setup after loading the view.
    }
    @objc func search1() {
        let se : String?
    let searchtext = ddd.text!.lowercased()
       let cityin = namecity.filter{ $0.self ==  searchtext}
        cityin.forEach{(String) in
            nameofcity.text = cityin.first
            let q = DispatchQueue(label: "setarea")
            print("\(areacity.first)")
//            q.async {
//                self.areacity.forEach{(late) in
//                    print(self.areacity.first)
//                }
//            }
           // City.init(id: , name: cityin.first, country: , coord: areacity.first)
        }
        let currentDate = Date()
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .full
        dateFormater.timeZone = .current
        dateFormater.timeStyle = .short
        let dateString = dateFormater.string(from: currentDate)
        labelTime.text = dateString
    }
    func printArea() {
        print(areacity)
    }
    func pi() {
    }
}

