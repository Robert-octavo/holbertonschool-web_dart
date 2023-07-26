/*
Create a function printRmCharacters() that prints all Rick and Morty Characters.

    You should use Rick and Morty API to get the data required
    Must use try-catch
    If an error occurs the function should return error caught: <error>
*/

import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

Future<String> fetchRmCharacters() async {
  try {
    var response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    return response.body;
  } catch (err) {
    return "error caught : $err";
  }
}

Future<void> printRmCharacters() async {
  try {
    String data = await fetchRmCharacters();
    Map<String, dynamic> json = jsonDecode(data);
    List<dynamic> results = json['results'];
    for (var result in results) {
      print(result['name']);
    }
  } catch (err) {
    print("error caught : $err");
  }
}
