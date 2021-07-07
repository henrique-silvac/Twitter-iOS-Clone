//
//  User.swift
//  Twitter iOS Clone
//
//  Created by Henrique Silva on 01/07/21.
//

import Foundation

struct User {
    let email: String
    let fullname: String
    var profileImageUrl: URL?
    let username: String
    let uid: String
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        self.email = dictionary["email"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        if let profileImageUrlString = dictionary["profileImageUrl"] as? String {
            guard let url = URL(string: profileImageUrlString) else {return}
            self.profileImageUrl = url
        }
    }
}
