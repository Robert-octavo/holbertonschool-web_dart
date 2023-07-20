bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  String reversed = "";
  for (int i = s.length - 1; i >= 0; i--) {
    reversed += s[i];
  }
  return reversed == s;
}
