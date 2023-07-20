class Password {
  // make the property password private
  String _password = "";

  // constructor
  Password({String password = ""}) {
    _password = password;
  }

  // getter
  String get password => _password;

  // setter
  set password(String newPassword) {
    _password = newPassword;
  }

  /* password is valid*/
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUpper = false;
    bool hasLower = false;
    bool hasNumber = false;

    if (RegExp(r'[A-Z]').hasMatch(_password)) {
      hasUpper = true;
    }
    if (RegExp(r'[a-z]').hasMatch(_password)) {
      hasLower = true;
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
