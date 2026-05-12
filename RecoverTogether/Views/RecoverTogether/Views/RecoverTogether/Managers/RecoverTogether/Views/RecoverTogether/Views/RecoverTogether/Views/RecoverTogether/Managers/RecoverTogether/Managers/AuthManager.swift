//
//  AuthManager.swift
//  RecoverTogether
//
//  Created by Muaz Fnu
//
//  DESCRIPTION:
//  Handles all Firebase Authentication.
//  Features:
//  - Sign up with name, username, email, password
//  - Sign in with email and password
//  - Sign out
//  - Delete account permanently
//  - Saves username to UserDefaults for chat display
//  - Monitors auth state changes
//  - Setup completion tracking
//    (shows onboarding only ONCE for new users)
//

import FirebaseAuth
import FirebaseFirestore

class AuthManager: ObservableObject {
    // MARK: - Properties
    // Proprietary implementation
    
    // MARK: - Sign Up
    func signUp() {
        // Creates Firebase Auth account
        // Saves profile to Firestore
        // Caches username in UserDefaults
        // Proprietary implementation
    }
    
    // MARK: - Sign In
    func signIn() {
        // Signs in with Firebase Auth
        // Loads username from Firestore
        // Checks setup completion status
        // Proprietary implementation
    }
    
    // MARK: - Sign Out
    func signOut() {
        // Signs out from Firebase Auth
        // Clears local UserDefaults
        // Proprietary implementation
    }
    
    // MARK: - Delete Account
    func deleteAccount() {
        // Removes from all groups
        // Deletes all friend requests
        // Deletes Firestore document
        // Deletes Firebase Auth account
        // Proprietary implementation
    }
}
