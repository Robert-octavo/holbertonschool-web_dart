import '3-util.dart';
import 'dart:convert';

// Create a function greetUser() that returns a string as follows Hello <username> .

// Function prototype : Future<String> greetUser()

// Gets the user data by calling the provided function fetchUserData()

// Must use try-catch If an error occurs the function should return : error caught: <error>

// Create a function loginUser()

// Function prototype : Future<String> loginUser()

// Should call the provided function checkCredentials() which returns a future bool.

//     If checkCredentials() returns true loginUser() should print There is a user: true and call greetUser() to return it’s value
//     If checkCredentials() returns false loginUser() should print There is a user: false and return Wrong credentials

// Must use try-catch If an error occurs the function should return error caught: <error>

Future<String> greetUser() async {
  try {
    String data = await fetchUserData();
    Map<String, dynamic> json = jsonDecode(data);
    return 'Hello ${json['username']}';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool isUser = await checkCredentials();
    print('There is a user: $isUser');
    if (isUser) {
      return await greetUser();
    } else {
      print('There is a user: $isUser');
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
