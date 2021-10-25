//
//  SplashViewController.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

class SplashViewController: GenericBaseViewController<SplashViewModel> {
    
    private lazy var image: UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.isUserInteractionEnabled = false
        temp.image = PageViewImages.defaultSplashBackground.value
        temp.contentMode = .scaleAspectFill
        return temp
    }()
    
    private lazy var titleInfo: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.text = "Weather Application"
        temp.font = MainFont.medium(32).value
        temp.textColor = .white
        return temp
    }()
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        appendComponents()
        viewModel.fireApplicationInitiateProcess()
    }
    
    private func appendComponents() {
        view.addSubview(image)
        view.addSubview(titleInfo)
        
        image.expandView(to: view)
        
        NSLayoutConstraint.activate([
            
            titleInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleInfo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100)
            
        ])
    }
    
}
