import '1-util.dart';

Future<String> getUserId() async {
  String data = await fetchUserData();
  return data;
}
