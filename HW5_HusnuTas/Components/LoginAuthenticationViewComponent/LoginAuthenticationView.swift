//
//  LoginAuthenticationView.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

class LoginAuthenticationView: GenericBaseView<LoginAuthenticationViewData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.backgroundColor = .white
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [emailLoginView, infoTitle, loginButton])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .fill
        temp.distribution = .fill
        temp.axis = .vertical
        return temp
    }()
    
    private lazy var emailLoginView: EmailLoginView = {
        let temp = EmailLoginView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()

    private lazy var infoTitle: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = MainFont.regular(14).value
        temp.text = "Please provide email and password to login weather application successfully."
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 0
        temp.textAlignment = .left
        return temp
    }()
    
    private lazy var loginButton: ActionButton = {
        let temp = ActionButton()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 50).isActive = true
        temp.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60).isActive = true
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainers()
    }
    
    private func addContainers() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        containerView.expandView(to: self)
        mainStackView.expandView(to: containerView, with: 30)
        
    }

    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        loginButton.setData(by: data.actionButtonData)
        emailLoginView.setData(by: data.emailLoginViewData)
        mainStackView.setCustomSpacing(20, after: emailLoginView)
        mainStackView.setCustomSpacing(30, after: infoTitle)
        mainStackView.setCustomSpacing(30, after: loginButton)
        
    }
    
}
