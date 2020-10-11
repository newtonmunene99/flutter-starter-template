// TODO(newtonmmunene99): Convert to extension methods
/// These are helper utilities for strings
class StringUtils {
  /// Gets the name of an enum
  static String enumName(String enumToString) {
    final List<String> paths = enumToString.split(".");

    return paths[paths.length - 1];
  }
}
