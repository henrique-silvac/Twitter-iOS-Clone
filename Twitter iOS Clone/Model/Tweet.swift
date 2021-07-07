//
//  Tweet.swift
//  Twitter iOS Clone
//
//  Created by Henrique Silva on 05/07/21.
//

import Foundation

struct Tweet {
    let caption: String
    let likes: Int
    let retweetCount: Int
    var timestamp: Date!
    let uid: String
    let tweetID: String
    
    init(tweetID: String, dictionary: [String: Any]) {
        self.caption = dictionary["caption"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.retweetCount = dictionary["retweetCount"] as? Int ?? 0
        if let timestamp = dictionary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
        self.uid = dictionary["uid"] as? String ?? ""
        self.tweetID = tweetID

    }
    
}
