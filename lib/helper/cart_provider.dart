import 'package:flutter/material.dart';
import '../model/cart_model.dart';
import '../model/json_model.dart';

class CartProvider extends ChangeNotifier {
  CartModel _cart = CartModel();

  List<Product> get items => _cart.items;

  void addItem(Product product) {
    _cart.addItem(product);
    notifyListeners();
  }

  void removeItem(Product product) {
    _cart.removeItem(product);
    notifyListeners();
  }

  int get itemCount => _cart.itemCount;
}
