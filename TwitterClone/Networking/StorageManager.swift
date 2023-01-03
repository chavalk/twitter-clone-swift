//
//  StorageManager.swift
//  TwitterClone
//
//  Created by Jose Garcia on 1/2/23.
//

import Foundation
import Combine
import FirebaseStorageCombineSwift
import FirebaseStorage

final class StorageManager {
    static let shared = StorageManager()
    
    let storage = Storage.storage().reference()
    
    func uploadProfilePhoto(with randomID: String, image: Data, metaData: StorageMetadata) -> AnyPublisher<StorageMetadata, Error> {
        return storage
            .child("images/\(randomID).jpg")
            .putData(image, metadata: metaData)
            .eraseToAnyPublisher()
    }
}
