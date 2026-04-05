class ErrorHandler {
  static String handle(dynamic error) {
    if (error is Exception) {
      return error.toString();
    }
    return "Unknown error occurred";
  }
}
