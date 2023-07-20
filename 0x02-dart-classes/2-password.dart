class Password {
  String password = "";

  /* password is valid*/
  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    bool hasUpper = false;
    bool hasLower = false;
    bool hasNumber = false;

    for (int i = 0; i < password.length; i++) {
      if (password[i] == password[i].toUpperCase()) {
        hasUpper = true;
      }
      if (password[i] == password[i].toLowerCase()) {
        hasLower = true;
      }
      if (password[i] == "0" ||
          password[i] == "1" ||
          password[i] == "2" ||
          password[i] == "3" ||
          password[i] == "4" ||
          password[i] == "5" ||
          password[i] == "6" ||
          password[i] == "7" ||
          password[i] == "8" ||
          password[i] == "9") {
        hasNumber = true;
      }
    }
    return hasUpper && hasLower && hasNumber;
  }

  String toString() {
    return "Your Password is: $password";
  }
}
