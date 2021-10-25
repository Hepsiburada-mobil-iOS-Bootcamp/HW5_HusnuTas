//
//  TextFieldViewData.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation

class TextFieldViewData {
    
    private(set) var placeHolder: String
    private(set) var isSecureTextEntry: Bool
    private(set) var textChangeListener: TextChangeBlock?
    
    init(placeHolder: String, isSecureTextEntry: Bool = false) {
        self.placeHolder = placeHolder
        self.isSecureTextEntry = isSecureTextEntry
    }
    
    func setTextChangeListener(by value: @escaping TextChangeBlock) -> Self {
        textChangeListener = value
        return self
    }
    
}
