//
//  MainViewBuilder.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

class MainViewBuilder {
    
    class func build() -> UIViewController {
        
        let mainViewDataFormatter = MainViewDataFormatter()
        let viewModel = MainViewModel(authenticationManager: AuthenticationManager.shared, accessProviderManager: AccessProviderManager.shared, dataFormatter: mainViewDataFormatter)
        let viewController = MainViewController(viewModel: viewModel)
        let navigationViewController = UINavigationController(rootViewController: viewController)
        viewController.title = "Main"
        viewController.tabBarItem.image = TabBarImages.home.value
        viewController.tabBarItem.selectedImage = TabBarImages.homeSelected.value
        viewController.navigationController?.setNavigationBarHidden(false, animated: false)
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = AppTheme.smooth.value
        viewController.navigationController?.navigationBar.standardAppearance = appearance;
        viewController.navigationController?.navigationBar.scrollEdgeAppearance = viewController.navigationController?.navigationBar.standardAppearance
        
        return navigationViewController
    }
    
}
