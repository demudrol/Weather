//
//  ViewController.swift
//  Weather
//
//  Created by Nikolai Dementev on 01.04.17.
//  Copyright © 2017 demudrol corp. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UITableViewController {
    let manager: ManagerData = ManagerData()
    override func viewDidLoad() {
        manager.loadJSON()
        print("-----------------------------------------------")
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        print("-----------------------------------------------")
        let realm = try! Realm()
        let data = realm.objects(WeatherData.self)
        print("\(data)")
        print("-----------------------------------------------")
        //        manager.loadJSON()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

