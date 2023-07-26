import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    String data = await fetchUserData();
    Map<String, dynamic> json = jsonDecode(data);
    String id = json['id'];
    String orders = await fetchUserOrders(id);
    var orderList = jsonDecode(orders);
    num total = 0;
    for (var order in orderList) {
      //String price = await fetchProductPrice(order);
      total +=
          jsonDecode(await fetchProductPrice(order)); //double.parse(price);
    }
    return total;
  } catch (e) {
    return -1;
  }
}
