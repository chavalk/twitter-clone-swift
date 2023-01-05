//
//  Tweet.swift
//  TwitterClone
//
//  Created by Jose Garcia on 1/4/23.
//

import Foundation

struct Tweet: Codable {
    var id = UUID().uuidString
    let author: TwitterUser
    let tweetContent: String
    var likesCount: Int
    var likers: [String]
    let isReply: Bool
    let parentReference: String?
}
