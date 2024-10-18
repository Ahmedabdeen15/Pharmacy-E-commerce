import 'package:pharmaco/data/model/product.dart';

class Cart {
  int id;
  bool isFinished = false;
  Map<Product, int> products = {};

  Cart({
    this.id = 0,
  });
  void addToList(Product product, int quantity) {
    if (product.quantity == null) {
      products[product] = (products[product] ?? 0) + quantity;
    } else if (product.quantity! >= quantity) {
      products[product] = (products[product] ?? 0) + quantity;
    }
  }

  void removeFromList(Product product, int quantity) {
    if (products.containsKey(product)) {
      int currentQuantity = products[product] ?? 0;
      if (currentQuantity > quantity) {
        products[product] = currentQuantity - quantity;
      } else {
        products.remove(product);
      }
    }
  }
}
