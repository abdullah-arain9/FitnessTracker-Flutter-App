# Fitness Tracker 🏃‍♂️

A sleek Flutter fitness tracking app that helps users monitor their daily activity — steps, water intake, workouts, sleep, and calories — through a clean, gradient-based interface with animated progress rings and interactive charts.

<p align="center">
  <img src="screenshots/app_preview.png" alt="Fitness Tracker Preview" width="100%">
</p>

---

## ✨ Features

| Feature | Description |
|---|---|
| 🎯 **Daily Goal Tracker** | Animated circular progress ring showing overall daily completion |
| 👣 **Steps Tracking** | Track daily step count with progress visualization |
| 💧 **Water Intake** | Log and monitor daily water consumption |
| 🏋️ **Workout Log** | Track workout duration and activity |
| 😴 **Sleep Tracker** | Bar chart visualization of sleep patterns across the week |
| 🔥 **Calorie Tracking** | Monitor calories burned vs. intake with circular indicators |
| 👤 **Profile & Achievements** | User profile with streaks, total activity, and achievement badges |

---

## 🛠️ Tech Stack

- **Flutter** & **Dart** — Cross-platform UI framework
- **Font Awesome Flutter** — Custom vector icon set
- **Percent Indicator** — Animated circular progress rings (daily goal, calories, steps)
- **FL Chart** — Bar charts for sleep data and area charts for activity trends
- **Cupertino Widgets** — iOS-style toggles and components

> **Note:** This version uses local in-app state management (`setState`) for UI interactions. Persistent local storage (e.g. Hive/SharedPreferences) and backend integration (Firebase) are planned for future versions.

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (≥3.0.0)
- Dart SDK
- Android Studio / VS Code

### Installation

```bash
git clone https://github.com/abdullah-arain9/Fitness-Tracker.git
cd Fitness-Tracker
flutter pub get
flutter run
```

---

## 📂 Project Structure

```
lib/
├── pages/
│   ├── homepage.dart       # Daily goal, calories, steps, sleep overview
│   ├── taskpage.dart       # Activity logging (steps, water, workout, sleep)
│   └── accpage.dart        # Profile, achievements & settings
├── bottomnavigation.dart    # Bottom navigation bar
└── main.dart                # App entry point
```

---

## 🗺️ Roadmap

- [ ] Local data persistence (Hive / SharedPreferences)
- [ ] Firebase integration for cloud sync
- [ ] Push notifications for daily reminders
- [ ] Weekly/monthly analytics view

---

## 👨‍💻 Author

**Abdullah Arain**
Flutter Developer | GSoC 2026 Contributor @ Dart Organization

[GitHub](https://github.com/abdullah-arain9)

---

<p align="center">⭐ If you found this project useful, consider giving it a star!</p>
