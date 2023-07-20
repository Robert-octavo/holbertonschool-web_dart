/*
Write a function longestPalindrome() that accepts one argument String and returns the longest palindrome substring.

Function prototype : String longestPalindrome(String s);

A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome. You can use the function isPalindrome() return none. If the input string doesn’t contain any substrings return none.
*/

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }
  String longest = "";
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }
  return longest.length == 0 ? "none" : longest;
}

bool isPalindrome(String s) {
  //print(s);
  if (s.length < 3) {
    return false;
  }
  String reversed = "";
  for (int i = s.length - 1; i >= 0; i--) {
    reversed += s[i];
  }
  return reversed == s;
}
