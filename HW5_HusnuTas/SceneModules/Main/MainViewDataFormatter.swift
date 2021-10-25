//
//  MainViewDataFormatter.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation

class MainViewDataFormatter: MainViewDataFormatterProtocol {
    
    private var componentData: DataClass?
    
    func setData(with response: Weather) {
        self.componentData = response.data
    }
    
    func getData() -> DataClass {
        return componentData!
    }
    
}
