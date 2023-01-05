//
//  TweetComposeViewViewModel.swift
//  TwitterClone
//
//  Created by Jose Garcia on 1/4/23.
//

import Foundation
import Combine
import FirebaseAuth

final class TweetComposeViewViewModel: ObservableObject {
    
    private var subscriptions: Set<AnyCancellable> = []
    
    @Published var isValidToTweet: Bool = false
    @Published var error: String = ""
    private var user: TwitterUser?
    
    func getUserData() {
        guard let userID = Auth.auth().currentUser?.uid else { return }
        DatabaseManager.shared.collectionUsers(retrieve: userID)
            .sink { [weak self] completion in
                if case .failure(let error) = completion {
                    self?.error = error.localizedDescription
                }
            } receiveValue: { [weak self] twitterUser in
                self?.user = twitterUser
            }
            .store(in: &subscriptions)
    }
}
