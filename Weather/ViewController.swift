//
//  ViewController.swift
//  Weather
//
//  Created by Nikolai Dementev on 01.04.17.
//  Copyright © 2017 demudrol corp. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    let manager: ManagerData = ManagerData()
    override func viewDidLoad() {
        manager.loadJSON()
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
//        let realm = try! Realm()
//        let dataFromDB = realm.objects(WeatherData)
//        print(dataFromDB)
        //        manager.loadJSON()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

