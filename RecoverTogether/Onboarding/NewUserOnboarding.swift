//
//  NewUserOnboarding.swift
//  RecoverTogether
//
//  Created by Muaz Fnu
//
//  DESCRIPTION:
//  New user onboarding flow — shows ONLY ONCE for new users.
//  Never shows again after first login.
//
//  Steps:
//  1. Welcome Screen
//     - App introduction
//     - Feature overview
//
//  2. Profile Setup
//     - Pick avatar color
//     - Enter full name
//     - Enter sobriety start date
//
//  3. Add First Task
//     - Enter task title
//     - Pick date
//     - Set start and end time
//     - Saves to Firestore calendar
//
//  4. Join Group
//     - Enter invite code e.g. RCVR-AB12
//     - Joins accountability group
//     - Can skip and create one later
//
//  5. All Set
//     - Confirmation screen
//     - Go to Dashboard button
//     - Sets hasCompletedSetup = true in both
//       UserDefaults and Firestore
//     - Never shows again after this point
//

import SwiftUI
import FirebaseFirestore
import FirebaseAuth

struct NewUserSetupView: View {
    // MARK: - Properties
    // Proprietary implementation

    var body: some View {
        // 5 step onboarding flow
        // Proprietary implementation
    }

    func saveProfile() {
        // Saves name, avatar, sobriety date
        // to Firestore users collection
        // Proprietary implementation
    }

    func saveTask() {
        // Saves first task to calendarTasks
        // Firestore collection
        // Proprietary implementation
    }

    func joinGroup() {
        // Joins group via invite code
        // Updates memberUIDs in Firestore
        // Proprietary implementation
    }

    func handleNext() {
        // Advances to next step
        // On final step saves hasCompletedSetup
        // to both UserDefaults and Firestore
        // Dismisses onboarding forever
        // Proprietary implementation
    }
}
