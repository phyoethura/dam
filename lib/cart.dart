import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List<String> cart = [];
  // var cart = [];

  void addToCart(String productName) {
    cart.add(productName);
    notifyListeners();
  }

  int countProducts() {
    return cart.length;
  }

  void clearCart() {
    cart.clear();
    notifyListeners();
  }
}