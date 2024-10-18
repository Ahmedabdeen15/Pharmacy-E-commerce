import 'package:pharmaco/data/model/cart_item.dart';
import 'package:pharmaco/data/model/product.dart';

class Cart {
  int id;
  bool isFinished = false;
  Map<String, CartItem> products = {};
  double totalPrices = 0;

  Cart({
    this.id = 0,
  });
  void addToList(Product product, int quantity) {
    String productName = product.productName ?? 'Unknown';
    if (product.quantity == null || product.quantity! >= quantity) {
      // Check if the product already exists in the cart by its name
      if (products.containsKey(productName)) {
        // Update existing quantity
        CartItem existingItem = products[productName]!;
        totalPrices -= existingItem.totalPrice; // Subtract old total
        existingItem.quantity += quantity;
        totalPrices += existingItem.totalPrice; // Add new total
      } else {
        // Add new product to the cart
        CartItem newItem = CartItem(product: product, quantity: quantity);
        products[productName] = newItem;
        totalPrices += newItem.totalPrice;
      }
    }
  }

  void removeFromList(Product product, int quantity) {
    String productName =
        product.productName ?? 'Unknown'; // Use product name as key

    if (products.containsKey(productName)) {
      CartItem currentItem = products[productName]!;

      totalPrices -= currentItem.totalPrice; // Subtract old total

      // Adjust the quantity or remove the product from the cart
      if (currentItem.quantity > quantity) {
        currentItem.quantity -= quantity;
        totalPrices += currentItem.totalPrice; // Add updated total
      } else {
        products.remove(productName);
      }
    }
  }
}
