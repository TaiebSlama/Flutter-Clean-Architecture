class AppLogger {
  static void log(String tag, dynamic message) {
    // ignore: avoid_print
    print("$tag : $message");
  }
}
