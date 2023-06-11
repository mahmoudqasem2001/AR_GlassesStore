import 'package:shop_app/providers/product_provider.dart';

class OrderItem {
  int quantity;
  int price;
  Product item;
  OrderItem({
    required this.quantity,
    required this.price,
    required this.item,
  });
}
