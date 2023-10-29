class Utils {
  static String getGender({required String? gender, String defaultValue = "-"}) {
    if (gender != null) {
      switch (gender.toLowerCase()) {
        case "female":
          return "หญิง";
        case "male":
          return "ชาย";
        default:
          return defaultValue;
      }
    }
    return defaultValue;
  }
}