//
//  ManagerData.swift
//  Weather
//
//  Created by Nikolai Dementev on 01.04.17.
//  Copyright © 2017 demudrol corp. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import RealmSwift

class ManagerData {
    func loadJSON() {
        let realm = try! Realm()
        let url = "http://api.openweathermap.org/data/2.5/forecast?q=London&appid=f43cd937d74356c1052dcfc1559435bd"
        let onlineWeather: WeatherData = WeatherData()
        Alamofire.request(url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print ("\(onlineWeather.city_name)")
                onlineWeather.city_name = json["city"]["name"].stringValue
                for (_, subJson) in json["list"] {
                    let tmpTemp = Temp()
                    tmpTemp.t = subJson["main"]["temp"].doubleValue
                    tmpTemp.icon = subJson["weather"][0]["icon"].stringValue
                    tmpTemp.dt = subJson["dt_txt"].stringValue
                    onlineWeather.tempList.append(tmpTemp)
                }
                try! realm.write {
                    realm.add(onlineWeather)
                }
                print(onlineWeather)
            case .failure(let error):
                print(error)
            }
        }
    }
}
