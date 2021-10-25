//
//  AuthenticationManagerProtocol.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation

protocol AuthenticationManagerProtocol {
    
    func isLoggedIn(with completion: @escaping BooleanBlock)
    
    func signIn(with request: SimpleAuthenticationRequest)
    
    func signOut()
    
}
