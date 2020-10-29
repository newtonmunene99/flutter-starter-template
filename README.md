# Example Starter App

**Optimized for android**

## Dependencies

- logger
- basic_utils
- built_value
- google_fonts
- validators
- permission_handler
- flutter_secure_storage
- states_rebuilder
- lint
- flutter_laucher_icons

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

