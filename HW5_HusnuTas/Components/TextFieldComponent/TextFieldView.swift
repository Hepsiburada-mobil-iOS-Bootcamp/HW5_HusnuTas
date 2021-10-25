//
//  TextFieldView.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

class TextFieldView: GenericBaseView<TextFieldViewData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.backgroundColor = .white
        return temp
    }()
    
    private lazy var textField: UITextField = {
        let temp = UITextField()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clearButtonMode = .whileEditing
        //temp.delegate = self
        temp.addTarget(self, action: .catchTextFieldChanges, for: .editingChanged)
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserInterfaceComponent()
    }
    
    private func addUserInterfaceComponent() {
        addSubview(containerView)
        containerView.addSubview(textField)
        
        containerView.expandView(to: self)
        
        NSLayoutConstraint.activate([
            
            containerView.heightAnchor.constraint(equalToConstant: 60),
            
            textField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            textField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            textField.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 2),
            textField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -2),
            
        ])
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        textField.placeholder = data.placeHolder
        textField.isSecureTextEntry = data.isSecureTextEntry
    }
    
    @objc func catchTextFieldChanges(_ sender: UITextField) {
        returnData()?.textChangeListener?(sender.text)
    }
    
}

extension TextFieldView: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        returnData()?.textChangeListener?(textField.text)
    }
    
}

fileprivate extension Selector {
    
    static let catchTextFieldChanges = #selector(TextFieldView.catchTextFieldChanges)
}
