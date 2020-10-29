# Example Starter App

**Optimized for android**

## Dependencies

All dependencies are optional and you can remove any that you won't need

- [logger]('https://pub.dev/packages/logger') - Small, easy to use and extensible logger which prints beautiful logs. Dart prints good logs using `print()` but logger is an amazing package which prints easy to read and debug logs.
- [basic_utils]('https://pub.dev/packages/basic_utils') - Contains a lot of useful basic utils for dealing with `String`s, `Date`, `Http`, `Math`, `Color`, email, e.t.c.
- [built_value]('https://pub.dev/packages/built_value') - Dart classes are amazing but it gets a bit tideous when you have to ovewrite `==` and serialize/deserialize the data. Built value uses codegen to do all of this for you using the standard dart syntax.
- [google_fonts]('https://pub.dev/packages/google_fonts') - Easily change the font of your App to any [google font]('https://fonts.google.com/')
- [validators]('https://pub.dev/packages/validators') - You really might not need this if you already have `basic_utils`. The package brings with it validation helpers, really great for using with text fields, validating inputs and data passed by the user.
- [permission_handler]('https://pub.dev/packages/permission_handler') - Easily check for and request device permission such as location, read/write, camera, biometrics e.t.c.
- [flutter_secure_storage]('https://pub.dev/packages/flutter_secure_storage') - Store data in the [keychain]('https://developer.apple.com/library/content/documentation/Security/Conceptual/keychainServConcepts/01introduction/introduction.html#//apple_ref/doc/uid/TP30000897-CH203-TP1') for iOS, and the [keystore]('https://developer.android.com/training/articles/keystore.html') on Android. If you really need to use this package, keep in mind that you'll need to set `minSdkVersion` to >= 18.
- [states_rebuilder]('https://pub.dev/packages/states_rebuilder') - These lots of state and dependency injection packages out there. This solution however really attracts me. The simplicity is amazing. What's more there's zero boilerplate and no annotations or codegen. The business logic is written in pure dart hence enabling complete separation of the UI and the BLoC
- [lint]('https://pub.dev/packages/lint') - Hand picked lint rules for dart and flutter. Helps to maintain clean code which follows a consistent dart style guide.
- [flutter_laucher_icons]('https://pub.dev/packages/flutter_launcher_icons/') - This tool simplifies the task of updating your app's laucher icon(s) for different platforms

## Folder Structure

- assets/
  - google_fonts/
  - images/
- lib/
  - app/
    - api/
    - database/
    - models/
    - pages/
    - services
    - utils
    - widgets
  - config/
  - utils/
  - app.dart
  - main_dev.dart
  - main_prod.dart
  - main_qa.dart
- analysis_options.yaml
- flutter_launcher_icons.yaml

## Prereq

## Codegen

This template includes some packages which utilize code generation. Use the following commands, to build once or to keep watching for changes, respectively

- build - `flutter packages pub run build_runner build --delete-conflicting-outputs`
- watch - `flutter packages pub run build_runner watch --delete-conflicting-outputs`

## Running the app

The app has different flavor configurations depending on the environment. Available environments are `dev` - Development,`qa` - Quality Assurance and `prod` - Production.

### Debug

- dev - `flutter run --flavor dev -t lib/main_dev.dart`
- qa - `flutter run --flavor qa -t lib/main_qa.dart`
- prod - `flutter run --flavor prod -t lib/main_prod.dart`

### Profile

- dev - `flutter run --profile --flavor dev -t lib/main_dev.dart`
- qa - `flutter run --profile --flavor qa -t lib/main_qa.dart`
- prod - `flutter run --profile --flavor prod -t lib/main_prod.dart`

### Release

- dev - `flutter run --release --flavor dev -t lib/main_dev.dart`
- qa - `flutter run --release --flavor qa -t lib/main_qa.dart`
- prod - `flutter run --release --flavor prod -t lib/main_prod.dart`

## Generate App Icons

1. Replace app icon in `assets/icon/icon.png`
2. Run `flutter pub run flutter_launcher_icons:main`

