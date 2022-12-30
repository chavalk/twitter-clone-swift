//
//  ProfileDataFormViewViewModel.swift
//  TwitterClone
//
//  Created by Jose Garcia on 12/30/22.
//

import Foundation
import Combine

final class ProfileDataFormViewViewModel: ObservableObject {
    @Published var displayName: String?
    @Published var username: String?
    @Published var bio: String?
    @Published var avatarPath: String?
}
