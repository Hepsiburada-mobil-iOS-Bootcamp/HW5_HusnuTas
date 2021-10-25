//
//  WeatherView.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 25.10.2021.
//

import UIKit

class WeatherView: GenericBaseView<WeatherViewData> {
    
    var delegate: MainViewDataFormatterProtocol?
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.clipsToBounds = true
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [infoView])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.isUserInteractionEnabled = true
        temp.alignment = .fill
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 20
        return temp
    }()
    
    private lazy var infoView: LabelPackComponent = {
        let temp = LabelPackComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    private var emptyView: EmptyBackgroundView!
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
    }
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addMainView()
    }
    
    private func addMainView() {
        
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        containerView.expandView(to: self)
        
        NSLayoutConstraint.activate([
            
            mainStackView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            mainStackView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        
        ])
        
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        infoView.setData(by: data.labelPackData)
    }
    
    
//    private func getLabelPackComponentData() -> LabelPackComponentData {
//        return LabelPackComponentData(title: delegate?.getData().city ?? "", subTitle: delegate?.getData().country ?? "")
//            .setSubTitleLabelDistributionData(by: LabelDistributionData().setContentMode(by: .center).setTextAlignment(by: .center).setNumberOfLines(by: 2).setLineBreakMode(by: .byTruncatingTail).setFont(by: MainFont.regular(16).value))
//            .setTitleLabelDistributionData(by: LabelDistributionData().setContentMode(by: .center).setTextAlignment(by: .center).setNumberOfLines(by: 1).setLineBreakMode(by: .byTruncatingTail).setFont(by: MainFont.bold(24).value))
//            .setSpacing(by: 10)
//            .setStackViewAlignment(by: .fill)
//
//    }
    
}
