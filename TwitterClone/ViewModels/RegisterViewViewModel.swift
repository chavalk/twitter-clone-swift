//
//  RegisterViewViewModel.swift
//  TwitterClone
//
//  Created by Jose Garcia on 12/17/22.
//

import Foundation

final class RegisterViewViewModel: ObservableObject {
    
    @Published var email: String?
    @Published var password: String?
    @Published var isRegistrationFormValid: Bool = false
    
    func validateRegistrationForm() {
        
    }
}
