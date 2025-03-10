import 'json_model.dart';

class CartModel {
  final List<Product> _items = [];

  List<Product> get items => List.unmodifiable(_items);

  void addItem(Product product) {
    _items.add(product);
  }

  void removeItem(Product product) {
    _items.remove(product);
  }

  int get itemCount => _items.length;
}
