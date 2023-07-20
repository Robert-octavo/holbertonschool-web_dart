String longestUniqueSubstring(String str) {
  String longestSubstring = "";
  String currentSubstring = "";
  for (int i = 0; i < str.length; i++) {
    if (currentSubstring.contains(str[i])) {
      if (currentSubstring.length > longestSubstring.length) {
        longestSubstring = currentSubstring;
      }
      currentSubstring = str[i];
    } else {
      currentSubstring += str[i];
    }
  }
  if (currentSubstring.length > longestSubstring.length) {
    longestSubstring = currentSubstring;
  }
  return longestSubstring;
}
