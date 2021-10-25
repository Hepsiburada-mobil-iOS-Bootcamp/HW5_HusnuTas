//
//  AccessProviderManager.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 25.10.2021.
//

import Foundation

class AccessProviderManager: AccessProviderProtocol {
    
    public static let shared = AccessProviderManager()
    
    private init() {
        
    }
    
    private let key = "1371c171-8929-42fd-8bc8-2dd64e97bd07"
    
    func returnApiKey() -> String {
        return key
    }
    
}
