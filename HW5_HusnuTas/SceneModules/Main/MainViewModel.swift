//
//  MainViewModel.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class MainViewModel {
    
    private var loginStateListener: BooleanBlock?
    private var mainViewState: ((ViewState) -> Void)?
    private var resultBlock: ((Result<Weather, ErrorResponse>) -> Void)?
    
    private let authenticationManager: AuthenticationManager
    private let accessProviderManager: AccessProviderProtocol
    var dataFormatter: MainViewDataFormatterProtocol
    
    init(authenticationManager: AuthenticationManager,
         accessProviderManager: AccessProviderProtocol,
         dataFormatter: MainViewDataFormatterProtocol) {
        self.authenticationManager = authenticationManager
        self.accessProviderManager = accessProviderManager
        self.dataFormatter = dataFormatter
        listenUserState()
    }
    
    func subscribeLoginState(with completion: @escaping BooleanBlock) {
        loginStateListener = completion
    }
    
    func getData() {
        mainViewState?(.loading)
        do {
            guard let urlRequest = try? WeatherServiceProvider(request: getWeatherRequest()).returnUrlRequest() else { return }
            fireApiCall(with: urlRequest, with: dataListener)
        }
        
    }
    
    func subscribeViewState(with completion: @escaping (ViewState) -> Void) {
        mainViewState = completion
    }
    
    func subscribeData(with completion: @escaping (Result<Weather, ErrorResponse>) -> Void) {
        resultBlock = completion
    }
    
    // MARK: - Private Methods
    private func listenUserState() {
        authenticationManager.isLoggedIn(with: isLoggedInListener)
    }
    
    private func fireApiCall(with request: URLRequest, with completion: @escaping (Result<Weather, ErrorResponse>) -> Void) {
            APIManager.shared.executeRequest(urlRequest: request, completion: completion)
    }
    
    private func getWeatherRequest() -> WeatherDataRequest {
        return WeatherDataRequest(key: accessProviderManager.returnApiKey())
    }
    
    private func loggedInListenerHandler(with value: Bool) {
        if value {
            getData()
        }
    }
    
    private func apiCallHandler(from response: Weather) {
        dataFormatter.setData(with: response)
        mainViewState?(.done)
    }
    
    // MARK: - Listener Handlers
    private lazy var isLoggedInListener: BooleanBlock = { [weak self] value in
        print("test : \(value)")
        self?.loggedInListenerHandler(with: value)
    }
    
    private lazy var dataListener: (Result<Weather, ErrorResponse>) -> Void = { [weak self] result in
        switch result {
        case .failure(let error):
            print("error : \(error)")
        case .success(let response):
            self?.apiCallHandler(from: response)
        }
    }
    
}
