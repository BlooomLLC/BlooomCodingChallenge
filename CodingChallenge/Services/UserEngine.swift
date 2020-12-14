//
//  UserEngine.swift
//  CodingChallenge
//
//  Created by Kristopher Jackson on 12/14/20.
//

import Firebase

/// This class should take care of your Firebase Authentication logic
class UserEngine {
    
    /// Logs in a user with email and password
    static func login(withEmail email: String, password: String,
                      completion: @escaping (_ error: Error?) -> Void) -> Void {
        /**
         
         Add your Firebase code here
         - HINT: Use Firebase Auth
         
         */
        
    }
    
    /// Creates a new use using email and password
    static func createAccount(withEmail email: String, password: String,
                              completion: @escaping (_ error: Error?) -> Void) -> Void {
        /**
         
         Add your Firebase code here
         - HINT: Use `Auth.auth().createUser(withEmail:, password:, completion:)` for this
         - HINT: Keep in mind that `Auth.auth().createUser(withEmail:, password:, completion:)` creates a new user and logs that user in
         
         */
    }
    
    /// Gets additional user data and adds it to Firebase
    static func getUserData(_ user: UserDetails,
                            completion: @escaping (_ error: Error?) -> Void) -> Void {
        /**
        
         Convert the `user` to a dictionary [String: Any] containing the data (first name, last name, etc.) and send it to Firestore or Firebase Real-Time Database.
         
         We added some starter code below if you prefer to use Firestore:
        
         
         */
        
        let userID = user._uid
        let FirestoreUserCollection = Firestore.firestore().collection("users")
        let UserDocumentReference = FirestoreUserCollection.document(userID)
        
        // ... add code to save user data ...
        
    }
    
    
    /*
     
     Add any other functions here
     - You are not required to use our skeleton code. This is just to help you get started.
     
     */
    
    
}
