# Connected

A real-time chatting application developed using Flutter and Firebase.

## Getting Started

Steps to setup the application:

- Connect to Firebase. Go to [Firebase console](https://console.firebase.google.com/) and create a new project, disabling Google Analytics.
- Enable Google Sign-In method.
- Create a Firestore Database under Test mode.
- Initialize Firebase from Dart referring to [Flutter Fire](https://firebase.flutter.dev/docs/overview/) documentation.
- Install Firebase CLI referring the [documentation](https://firebase.google.com/docs/cli).
- Run the command to activate FlutterFire CLI:
` dart pub global activate flutterfire_cli `
- Run this command to choose the Firebase project created earlier:
` flutterfire configure `
- Go to _/ios/Runner/Info.plist_ and add your **REVERSED_CLIENT_ID** from Firebase project.
- Now run the app in connected android/ios device using the command:
`flutter run`
