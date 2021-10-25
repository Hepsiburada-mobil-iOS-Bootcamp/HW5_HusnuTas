//
//  LoginViewFormatterProtocol.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation

protocol LoginViewFormatterProtocol {
    
    func getLoginViewData(loginActionButtonCompletion: @escaping VoidCompletionBlock, emailChangeCompletion: @escaping TextChangeBlock, passwordChangeCompletion: @escaping TextChangeBlock) -> LoginAuthenticationViewData
    
}
