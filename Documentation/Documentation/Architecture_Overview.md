# RecoverTogether — Architecture Overview

## System Architecture

┌─────────────────────────────────────┐
│           iOS App (SwiftUI)          │
├─────────────────────────────────────┤
│  Views          │  Managers          │
│  - Dashboard    │  - AuthManager     │
│  - Calendar     │  - FirestoreManager│
│  - Chat         │  - Notification    │
│  - Friends      │    Manager         │
│  - Profile      │  - ThemeManager    │
│  - Leaderboard  │  - FocusSession    │
│  - FocusView    │    Manager         │
└────────┬────────┴────────┬──────────┘
│                 │
▼                 ▼
┌─────────────────────────────────────┐
│           Firebase Backend           │
├─────────────────────────────────────┤
│  FirebaseAuth  │  Firestore          │
│  - Sign up     │  - users            │
│  - Sign in     │  - groups           │
│  - Delete      │  - calendarTasks    │
│    account     │  - activityFeed     │
│                │  - friendRequests   │
│                │  - reminders        │
├─────────────────────────────────────┤
│  Firebase Messaging                  │
│  - Push notifications                │
│  - Background alerts                 │
└─────────────────────────────────────┘

## Key Design Decisions

### 1. Real-time Notifications
- Core feature of the app
- Uses Firestore addSnapshotListener
- Detects task overdue, left app, completed
- Auto-generated messages for quick replies

### 2. Owner-Only Task Control
- Only task creator can start/complete/delete
- Prevents other members from modifying tasks
- Enforced at both UI and Firestore level

### 3. Setup Flow Once
- Onboarding shows ONLY for new users
- Stored in both UserDefaults and Firestore
- Never shows again after first login

### 4. Username Not Email in Chat
- Username cached in UserDefaults on signup
- Loaded from Firestore on sign in
- Prevents email exposure in group chats

### 5. Bidirectional Friend Sync
- Friend requests update both users
- Removal updates both sides instantly
- Uses Firestore batch commits

## Technology Stack

| Component | Technology |
|-----------|------------|
| UI Framework | SwiftUI |
| Language | Swift 5.9 |
| Database | Firebase Firestore |
| Authentication | Firebase Auth |
| Notifications | Firebase Messaging + UNUserNotificationCenter |
| Minimum iOS | iOS 16.0 |
| Development | Xcode 15/16 |

## Notification Flow
User misses task by 15 mins
↓
TaskNotificationManager detects overdue
↓
Posts to activityFeed collection
↓
All group members Firestore listener fires
↓
TaskAlertOverlay appears on their screen
↓
Auto-generated message pre-filled
↓
Member taps Send
↓
Message posted to group chat
