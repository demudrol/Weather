//
//  Temp.swift
//  Weather
//
//  Created by Nikolai Dementev on 01.04.17.
//  Copyright © 2017 demudrol corp. All rights reserved.
//

import Foundation
import RealmSwift

class Temp: Object {
    dynamic var t: Double = 0
    dynamic var icon: String = ""
    dynamic var dt: String = ""
    
}
