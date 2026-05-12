# RecoverTogether — Firestore Database Schema

## Collections Overview

### 1. users/{uid}
Stores user profile information.

| Field | Type | Description |
|-------|------|-------------|
| uid | String | Firebase Auth UID |
| name | String | Full name |
| username | String | Unique username |
| email | String | Email address |
| avatarColor | String | Profile color (purple/blue/green/orange/pink) |
| sobrietyDate | Timestamp | Recovery start date |
| streak | Int | Current day streak |
| groupID | String | Current group ID |
| hasCompletedSetup | Bool | Onboarding completed flag |

---

### 2. groups/{groupID}
Stores accountability group data.

| Field | Type | Description |
|-------|------|-------------|
| name | String | Group name |
| joinCode | String | Invite code e.g. RCVR-AB12 |
| memberUIDs | Array | List of member UIDs |
| lastMessage | String | Preview of last message |
| createdAt | Timestamp | Creation date |

---

### 3. groups/{groupID}/messages
Stores group chat messages.

| Field | Type | Description |
|-------|------|-------------|
| uid | String | Sender UID |
| username | String | Sender username |
| text | String | Message content |
| timestamp | Timestamp | Send time |

---

### 4. calendarTasks
Stores all user scheduled tasks.

| Field | Type | Description |
|-------|------|-------------|
| title | String | Task name |
| date | Timestamp | Scheduled date |
| startTime | Timestamp | Task start time |
| endTime | Timestamp | Task end time |
| isCompleted | Bool | Task completion status |
| isActive | Bool | Task currently in progress |
| ownerName | String | Task owner name |
| ownerUID | String | Task owner UID |
| ownerColor | String | Owner avatar color |

---

### 5. activityFeed
Stores real-time group notifications.

| Field | Type | Description |
|-------|------|-------------|
| type | String | taskOverdue/taskCompleted/leftDuringTask/started |
| fromUID | String | Member who triggered alert |
| fromName | String | Member name |
| taskTitle | String | Related task name |
| message | String | Notification message |
| autoReply | String | Pre-generated reply text |
| timeLeft | String | Time remaining on task |
| timestamp | Timestamp | Alert time |

---

### 6. friendRequests
Stores friend connections.

| Field | Type | Description |
|-------|------|-------------|
| fromUID | String | Request sender UID |
| fromName | String | Sender name |
| fromUsername | String | Sender username |
| fromAvatarColor | String | Sender avatar color |
| toUID | String | Request receiver UID |
| toName | String | Receiver name |
| status | String | pending/accepted/declined/removed |
| timestamp | Timestamp | Request time |

---

### 7. reminders
Stores quick reply messages.

| Field | Type | Description |
|-------|------|-------------|
| from | String | Sender name |
| fromUID | String | Sender UID |
| to | String | Recipient name |
| taskTitle | String | Related task |
| message | String | Reminder message |
| timestamp | Timestamp | Send time |

---

## Sample Data

### Sample User
```json
{
  "uid": "abc123",
  "name": "Muaz Fnu",
  "username": "muaz123",
  "email": "muaz@email.com",
  "avatarColor": "purple",
  "sobrietyDate": "2026-01-01",
  "streak": 7,
  "groupID": "group456",
  "hasCompletedSetup": true
}
```

### Sample Task
```json
{
  "title": "Go to Gym",
  "date": "2026-04-27",
  "startTime": "14:00",
  "endTime": "15:00",
  "isCompleted": false,
  "isActive": true,
  "ownerName": "Muaz Fnu",
  "ownerUID": "abc123",
  "ownerColor": "purple"
}
```

### Sample Notification
```json
{
  "type": "taskOverdue",
  "fromUID": "abc123",
  "fromName": "Muaz Fnu",
  "taskTitle": "Go to Gym",
  "message": "Muaz hasn't started Go to Gym — 15 min past schedule!",
  "autoReply": "Hey Muaz! Don't forget your gym session! You've got this! 💪",
  "timestamp": "2026-04-27T14:15:00"
}
```
