import 'package:flutter/material.dart';
import 'package:pharmaco/data/model/cart.dart';
import 'package:pharmaco/data/model/product.dart';
import 'package:pharmaco/view/widget/cart_card.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
    required this.localCart,
  });
  final Cart localCart;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void increment(Product model) {
    setState(() {
      widget.localCart.addToList(model, 1);
    });
  }

  void decrement(Product model) {
    setState(() {
      widget.localCart.removeFromList(model, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(title: 'Cart'),
      body: widget.localCart.products.isEmpty
          ? const Center(
              child: Text(
                "Cart is empty",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(20),
                    child: ListView.builder(
                      itemCount: widget.localCart.products.length,
                      itemBuilder: (context, index) {
                        var temp =
                            widget.localCart.products.entries.elementAt(index);
                        return CartCard(
                          model: temp.value.product,
                          count: temp.value.quantity,
                          increment: increment,
                          decrement: decrement,
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Total: \$${widget.localCart.totalPrices}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GenericFlexibleButton(
                        text: "Buy Now",
                        minWidth: 155,
                        minHeight: 41,
                        fontSize: 20,
                        onPressed: () {})
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
    );
  }
}
