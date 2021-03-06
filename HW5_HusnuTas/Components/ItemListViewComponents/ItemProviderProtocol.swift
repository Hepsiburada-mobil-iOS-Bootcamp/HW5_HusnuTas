//
//  ItemProviderProtocol.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation

protocol ItemProviderProtocol: AnyObject {
    
    func askNumberOfSection() -> Int
    func askNumberOfItem(in section: Int) -> Int
    func askData(at index: Int) -> GenericDataProtocol?
    func selectedItem(at index: Int)
    func getMoreData()
    func isLoadingCell(for index: Int) -> Bool
}

extension ItemProviderProtocol {
    func selectedItem(at index: Int) { }
    func getMoreData() { }
    func isLoadingCell(for index: Int) -> Bool { return false }
}

