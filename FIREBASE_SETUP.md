# Firebase Configuration Instructions

## Important: Complete Firebase Setup

The app is now ready, but you need to configure Firebase before it will run properly:

### Step 1: Configure Firebase Project

1. **Run FlutterFire CLI** (Recommended):
   ```bash
   # Install Firebase CLI and FlutterFire CLI if not already installed
   dart pub global activate flutterfire_cli
   
   # Configure Firebase for your project
   cd d:/ITI/thrifty
   flutterfire configure --project=thrifty-f1509
   ```
   
   This will:
   - Download the correct configuration files
   - Generate `firebase_options.dart` with real values
   - Set up Android and iOS configurations automatically

2. **Manual Configuration** (Alternative):
   - Go to: https://console.firebase.google.com/u/0/project/thrifty-f1509/settings/general
   - Download `google-services.json` for Android → place in `android/app/`
   - Download `GoogleService-Info.plist` for iOS → place in `ios/Runner/`
   - Update `lib/firebase_options.dart` with the actual API keys from Firebase Console

### Step 2: Enable Google Sign-In

1. Go to: https://console.firebase.google.com/u/0/project/thrifty-f1509/authentication/providers
2. Click on "Google" provider
3. Click "Enable"
4. Add your support email
5. Click "Save"

### Step 3: Add SHA-1 Certificate (Android Only)

For Google Sign-In to work on Android, you need to add your SHA-1 certificate:

1. **Get your SHA-1**:
   ```bash
   cd android
   ./gradlew signingReport
   ```
   Look for the SHA-1 under "Task :app:signingReport" → "Variant: debug"

2. **Add to Firebase**:
   - Go to Project Settings → Your App → Add Fingerprint
   - Paste the SHA-1 certificate
   - Click Save

### Step 4: Run the App

```bash
cd d:/ITI/thrifty
flutter run
```

## What's Implemented

✅ Beautiful onboarding screen with 3 pages
✅ Google Sign-In authentication
✅ Splash screen with smart routing
✅ Home screen for authenticated users
✅ Modern Material 3 design with vibrant colors
✅ Smooth animations and transitions
✅ State management with Provider
✅ Persistent login state

## Troubleshooting

- **"Missing google-services.json"**: Complete Step 1 above
- **Google Sign-In fails**: Complete Step 2 and Step 3 above
- **Build errors**: Run `flutter clean && flutter pub get`
