//
//  UserService.swift
//  Twitter iOS Clone
//
//  Created by Henrique Silva on 30/06/21.
//

import Firebase

struct UserService {
    static let shared = UserService()
    
    func fethUser(complition: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        REF_USERS.child(uid).observeSingleEvent(of: .value) { (snapshot) in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
                        
            let user = User(uid: uid, dictionary: dictionary)
            complition(user)
            
        }
    }
}
