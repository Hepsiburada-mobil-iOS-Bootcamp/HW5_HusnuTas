//
//  AccountViewDataProtocol.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation

protocol AccountViewDataProtocol {
    
    func getAccountViewComponentData(by loggedIn: Bool) -> [GenericDataProtocol]
    
    func getHeaderViewData(with completion: @escaping VoidCompletionBlock) -> HeaderViewData
    
}
