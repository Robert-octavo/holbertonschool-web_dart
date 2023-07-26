import '2-util.dart';
//import 'dart:convert';

Future<void> getUser() async {
  try {
    String data = await fetchUser();
    //Map<String, dynamic> json = jsonDecode(data);
    print(data);
  } catch (e) {
    print('error caught: $e');
  }
}
