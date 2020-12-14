//
//  CurrentUser.swift
//  CodingChallenge
//

import Firebase

class CurrentUser {

    /// Returns a User object created by Firebase Auth
    /// `nil` if a user does not exist or is not signed in
    static var user: User? {
        get {
            return Auth.auth().currentUser
        }
    }

    /// Call this to check if the user exists
    static var isSignedIn: Bool {
        get {
            return Auth.auth().currentUser != nil
        }
    }

    /// Call this to log out a signed in user
    static func logOut() {
        do {
            try Auth.auth().signOut()
        } catch { /* Do nothing */ }
    }
    
}
