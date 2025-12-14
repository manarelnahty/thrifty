# Thrifty - Sustainable Thrifting Marketplace

A beautiful Flutter app for buying and selling second-hand items with Arabic RTL support.

[![Flutter](https://img.shields.io/badge/Flutter-3.9.2-02569B?logo=flutter)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Enabled-FFCA28?logo=firebase)](https://firebase.google.com)

## 🌟 Features

- ✅ **Beautiful Onboarding**: 3-page onboarding experience showcasing app features
- 🔐 **Google Sign-In**: Seamless authentication with Firebase
- 🛍️ **Marketplace**: Browse products with search and category filtering
- 📱 **Arabic RTL Support**: Full right-to-left text support
- 💬 **Contact Integration**: WhatsApp and phone contact for sellers
- 👤 **User Profile**: Account management and settings
- 🎨 **Modern UI**: Material 3 design with vibrant gradients

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.9.2 or higher
- Dart SDK
- Firebase account
- Android Studio / VS Code

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/manarelnahty/thrifty.git
   cd thrifty
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**
   
   Option 1 (Recommended): Use FlutterFire CLI
   ```bash
   dart pub global activate flutterfire_cli
   flutterfire configure --project=thrifty-f1509
   ```

   Option 2: Manual - see [FIREBASE_SETUP.md](FIREBASE_SETUP.md)

4. **Enable Google Sign-In** in Firebase Console

5. **Run the app**
   ```bash
   flutter run
   ```

## 📂 Project Structure

```
lib/
├── models/          # Data models
├── services/        # Business logic
├── providers/       # State management
├── screens/         # UI screens
├── widgets/         # Reusable widgets
├── theme/           # App theme
└── utils/           # Utilities
```

## 🛠️ Built With

- **Flutter** - UI framework
- **Firebase Auth** - Authentication
- **Provider** - State management
- **Google Fonts** - Typography
- **url_launcher** - External links

## 🔜 Upcoming Features

- [ ] Favorites system
- [ ] Add product functionality
- [ ] In-app messaging
- [ ] Product reviews

## 👥 Author

**Manar Elnahty** - [GitHub](https://github.com/manarelnahty)

---

**Made with ❤️ using Flutter**
