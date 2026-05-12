# RecoverTogether — Testing Results

## Testing Strategy
Manual functional testing on iOS Simulator and 
physical iPhone devices running iOS 18.
Multi-user testing used two separate accounts on 
two devices connected to same Firebase project.

## Test Results

| Test Case | Expected Result | Status |
|-----------|----------------|--------|
| User Sign Up | Account created, onboarding appears | ✅ Pass |
| Setup Flow Once | Setup never shows again after first login | ✅ Pass |
| Add Calendar Task | Task appears on correct day with time | ✅ Pass |
| Owner-Only Control | Only owner can start/delete task | ✅ Pass |
| Start Task Timer | Timer counts down, group notified | ✅ Pass |
| Leave App Notification | Group gets alert with reply box | ✅ Pass |
| Mark Task Done | Task turns green, group notified | ✅ Pass |
| 15-Min Overdue Alert | Group notified with quick reply | ✅ Pass |
| Community Calendar | Shows member's real tasks | ✅ Pass |
| Status Colors | Green/Orange/Red updates correctly | ✅ Pass |
| Create Group Chat | Group created with selected friends | ✅ Pass |
| Join Group via Code | User joins with RCVR-XXXX code | ✅ Pass |
| Add Members to Chat | Friends added to existing group | ✅ Pass |
| Friend Request | Both users appear in friends list | ✅ Pass |
| Remove Friend | Removed from both sides instantly | ✅ Pass |
| Delete Account | Removed from all groups and friends | ✅ Pass |
| Leaderboard | Real data ranked by streak | ✅ Pass |
| Chat Username | Shows username not email | ✅ Pass |

## Devices Tested
- iPhone SE (iOS 18)
- iPhone 13 (iOS 18)
- iPhone 14 Pro Max (iOS 18)
- iPhone 17 Pro (iOS 26.4.2)
- iOS Simulator (iPhone 16 Pro)

## Compatibility
- Tested on almost every major iPhone model
- Compatible with iOS 16.0 and above
- Optimized for all screen sizes

## Known Limitations
- Firebase incompatible with Xcode 26 beta
- Use Xcode 15 or 16 for stable builds
- Push notifications require physical device
