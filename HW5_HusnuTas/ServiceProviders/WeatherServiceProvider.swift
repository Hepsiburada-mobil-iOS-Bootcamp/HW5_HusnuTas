//
//  WeatherServiceProvider.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 25.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class WeatherServiceProvider: ApiServiceProvider<WeatherDataRequest> {
    
    init(request: WeatherDataRequest) {
        super.init(method: .get,
                   baseUrl: BaseUrls.dev.rawValue,
                   path: Paths.city.value,
                   data: request)
    }
    
}
