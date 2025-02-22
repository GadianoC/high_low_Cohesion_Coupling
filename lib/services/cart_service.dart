import 'package:flutter/material.dart';
import 'package:high_cohesion_low_coupling/models/product.dart';

class CartService extends ChangeNotifier {
  final List<Product> products = [];

  void addProduct(Product product) {
    if (!products.contains(product)) {
      products.add(product);
      notifyListeners();
    }
  }

  void removeProduct(Product product) {
    if (products.contains(product)) {
      products.remove(product);
      notifyListeners();
    }
  }
}
