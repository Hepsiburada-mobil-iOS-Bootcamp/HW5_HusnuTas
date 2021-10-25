//
//  SplashViewBuilder.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

class SplashViewBuilder {
    
    class func build(with completion: @escaping VoidBlock) -> UIViewController {
        let viewModel = SplashViewModel(completion: completion)
        return SplashViewController(viewModel: viewModel)
    }
    
}
