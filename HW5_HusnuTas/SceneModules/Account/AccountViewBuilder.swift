//
//  AccountViewBuilder.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

// Use Localizables

class AccountViewBuilder {
    
    class func build() -> UIViewController {
        let formatter = AccountViewDataFormatter()
        let authenticationManager = AuthenticationManager.shared
        let viewModel = AccountViewModel(formatter: formatter, authenticationManager: authenticationManager)
        let viewController = AccountViewController(viewModel: viewModel)
        viewController.title = "Account"
        viewController.tabBarItem.image = SFSymbolsHelper.personOutlined.value
        viewController.tabBarItem.selectedImage = SFSymbolsHelper.personFilled.value
        return viewController
        
    }
    
}
