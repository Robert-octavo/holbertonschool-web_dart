class Password {
  // make the property password private
  String _password = "";

  // constructor
  Password({String password = ""}) {
    _password = password;
  }

  /* password is valid*/
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUpper = false;
    bool hasLower = false;
    bool hasNumber = false;

    for (int i = 0; i < _password.length; i++) {
      if (_password[i] == _password[i].toUpperCase()) {
        hasUpper = true;
      }
      if (_password[i] == _password[i].toLowerCase()) {
        hasLower = true;
      }
      // if (_password[i] == "0" ||
      //     _password[i] == "1" ||
      //     _password[i] == "2" ||
      //     _password[i] == "3" ||
      //     _password[i] == "4" ||
      //     _password[i] == "5" ||
      //     _password[i] == "6" ||
      //     _password[i] == "7" ||
      //     _password[i] == "8" ||
      //     _password[i] == "9") {
      //   hasNumber = true;
      // }
    }
    // check if _password contains number using RegExp
    if (RegExp(r'[0-9]').hasMatch(_password)) {
      hasNumber = true;
    }
    return hasUpper && hasLower && hasNumber;
  }

  String toString() {
    return "Your Password is: $_password";
  }
}
