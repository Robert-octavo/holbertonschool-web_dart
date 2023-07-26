import '3-util.dart';
import 'dart:convert';

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
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
