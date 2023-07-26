import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    String data = await fetchUserData();
    Map<String, dynamic> json = jsonDecode(data);
    String id = json['id'];
    String orders = await fetchUserOrders(id);
    List<dynamic> orderList = jsonDecode(orders);
    double total = 0;
    for (var order in orderList) {
      String price = await fetchProductPrice(order);
      total += double.parse(price);
    }
    return total;
  } catch (e) {
    return -1;
  }
}
