import 'package:device_info/device_info.dart';

/// Build mode device is running on
enum BuildMode {
  /// Debug mode. Ran with `flutter run`
  DEBUG,

  /// Profile mode. Ran with `flutter run --profile`
  PROFILE,

  /// Release mode. Ran with `flutter run --release`
  RELEASE
}

/// Utilities to determine current build mode and get the device info
class DeviceUtils {
  /// Get the current build mode
  static BuildMode currentBuildMode() {
    if (const bool.fromEnvironment('dart.vm.product')) {
      return BuildMode.RELEASE;
    }
    var result = BuildMode.PROFILE;

    //Little trick, since assert only runs on DEBUG mode
    assert(() {
      result = BuildMode.DEBUG;
      return true;
    }());

    return result;
  }

  /// Get Android device info
  static Future<AndroidDeviceInfo> androidDeviceInfo() async {
    final DeviceInfoPlugin plugin = DeviceInfoPlugin();
    return plugin.androidInfo;
  }

  /// Get ios device info
  static Future<IosDeviceInfo> iosDeviceInfo() async {
    final DeviceInfoPlugin plugin = DeviceInfoPlugin();
    return plugin.iosInfo;
  }
}
