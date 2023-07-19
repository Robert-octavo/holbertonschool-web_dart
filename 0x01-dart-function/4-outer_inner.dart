void outer(String name, String id) {
  String inner() {
    var lastName = name.split(" ")[1];
    var firstName = name.split(" ")[0];
    lastName = lastName.substring(0, 1);
    return "Hello Agent $lastName.$firstName your id is $id";
  }

  print(inner());
}
