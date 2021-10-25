//
//  MainViewDataFormatterProtocol.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation

protocol MainViewDataFormatterProtocol {
    
    func setData(with response: Weather)
    
    func getData() -> DataClass
    
}
