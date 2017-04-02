//
//  WeatherData.swift
//  Weather
//
//  Created by Nikolai Dementev on 01.04.17.
//  Copyright © 2017 demudrol corp. All rights reserved.
//

import Foundation
import RealmSwift

class WeatherData: Object {
    dynamic var city_name: String = ""
    var tempList = List<Temp>()
    
}
