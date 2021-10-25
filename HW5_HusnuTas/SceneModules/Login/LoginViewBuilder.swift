//
//  LoginViewBuilder.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

class LoginViewBuilder {
    
    class func build() -> UIViewController {
        let formatter = LoginViewFormatter()
        let authenticationManager = AuthenticationManager.shared
        let viewModel = LoginViewModel(authenticationManager: authenticationManager, formatter: formatter)
        return LoginViewController(viewModel: viewModel)
    }
    
}
