//
//  LoginViewFormatter.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation

class LoginViewFormatter: LoginViewFormatterProtocol {
    
    func getLoginViewData(loginActionButtonCompletion: @escaping VoidCompletionBlock, emailChangeCompletion: @escaping TextChangeBlock, passwordChangeCompletion: @escaping TextChangeBlock) -> LoginAuthenticationViewData {
        let actionButtonData = ActionButtonData(text: "Login", buttonType: .filled(.sugarLevelColor)).setActionButtonListener(by: loginActionButtonCompletion)
        
        let emailLoginViewData = EmailLoginViewData(email: TextFieldViewData(placeHolder: "Email").setTextChangeListener(by: emailChangeCompletion), password: TextFieldViewData(placeHolder: "Password", isSecureTextEntry: true).setTextChangeListener(by: passwordChangeCompletion))
        
        return LoginAuthenticationViewData(actionButtonData: actionButtonData, emailLoginViewData: emailLoginViewData)
    }
    
}
