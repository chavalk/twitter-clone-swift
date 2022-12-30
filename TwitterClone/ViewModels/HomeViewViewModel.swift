//
//  HomeViewViewModel.swift
//  TwitterClone
//
//  Created by Jose Garcia on 12/29/22.
//

import Foundation
import Combine

final class HomeViewViewModel: ObservableObject {
    
    @Published var user: TwitterUser?
    
    func retreiveUser() {
        
    }
}
