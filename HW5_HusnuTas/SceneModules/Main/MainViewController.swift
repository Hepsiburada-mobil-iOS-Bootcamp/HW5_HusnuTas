//
//  MainViewController.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

class MainViewController: GenericBaseViewController<MainViewModel> {
    
    private var mainComponent: WeatherView!
    private var emptyComponent: EmptyBackgroundView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        
        view.backgroundColor = .white
        
        addEmptyComponent()
        addViewModelListeners()
        
    }
    
    private func addEmptyComponent() {
        emptyComponent = EmptyBackgroundView(frame: .zero, data: EmptyBackgroundViewData(labelPackData: LabelPackComponentData(title: "Warning", subTitle: "Please login to system to retrive some data from service!")))
        emptyComponent.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(emptyComponent)
        
        emptyComponent.expandView(to: view)
    }
    
    private func addMainComponent() {
        let data = viewModel.dataFormatter.getData()
        mainComponent = WeatherView(data: WeatherViewData(labelPackData: LabelPackComponentData(title: data.country, subTitle: data.city)))
        mainComponent.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainComponent)
        
        mainComponent.expandView(to: view)
    }
    
    private func addViewModelListeners() {
        viewModel.subscribeViewState { [weak self] state in
            switch state {
            case .loading:
                return
            case .done:
                DispatchQueue.main.async {
                    self?.addMainComponent()
                }
            default:
                break
            }
        }
        
    }
    
}
