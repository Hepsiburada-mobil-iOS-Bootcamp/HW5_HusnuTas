//
//  WeatherDataRequest.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 25.10.2021.
//

import Foundation

class WeatherDataRequest: Codable {
    
    private(set) public var city: String = "Istanbul"
    private(set) public var state: String = "Istanbul"
    private(set) public var country: String = "Turkey"
    private(set) public var key: String

    public init(key: String) {
        self.key = key
    }
        
    
}
