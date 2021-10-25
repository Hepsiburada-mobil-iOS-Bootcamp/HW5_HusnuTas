//
//  EndPointHelper.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 25.10.2021.
//

import Foundation

enum EndpointHelper {

    enum BaseUrls: String {
        case dev = "http://api.airvisual.com/v2/"
    }

    enum Paths: GenericValueProtocol {

        typealias Value = String
        
        var value: String {
            switch self {
            case .city:
                return "city"
            }
        }
        
        case city
    }
    
}
