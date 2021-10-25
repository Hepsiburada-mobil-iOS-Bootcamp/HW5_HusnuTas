//
//  AuthenticationManager.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import Foundation
import Firebase

class AuthenticationManager: AuthenticationManagerProtocol {
    
    public static let shared = AuthenticationManager()
    
    private init() { }
    
    func isLoggedIn(with completion: @escaping BooleanBlock) {
        Auth.auth().addStateDidChangeListener { auth, user in
            print("isLoggedIn \((user != nil) ? true : false)")
            completion((user != nil) ? true : false)
        }
    }
    
    func signIn(with request: SimpleAuthenticationRequest) {
        Auth.auth().signIn(withEmail: request.email, password: request.password) { authDataResult, error in
            if error != nil {
                print("Error : \(error))")
            }
            print("data : \(authDataResult)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch let error {
            print("error : \(error)")
        }
    }
    
    
}
