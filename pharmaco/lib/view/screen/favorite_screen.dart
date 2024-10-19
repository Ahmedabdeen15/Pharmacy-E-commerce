import 'package:flutter/material.dart';
import 'package:pharmaco/data/model/cart.dart';
import 'package:pharmaco/data/model/product.dart';
import 'package:pharmaco/view/screen/main_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/wishlist_card.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({
    super.key,
    required this.localWishlist,
    required this.localCart,
  });
  final Cart localWishlist;
  final Cart localCart;
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  void addToCart(Product model) {
    widget.localCart.addToList(model, 1);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const MainScreen(
          initialIndex: 1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(title: 'Wishlist'),
      body: widget.localWishlist.products.isEmpty
          ? const Center(
              child: Text(
                "Wishlist is empty",
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
                      itemCount: widget.localWishlist.products.length,
                      itemBuilder: (context, index) {
                        var temp = widget.localWishlist.products.entries
                            .elementAt(index);
                        return WishlistCard(
                          model: temp.value.product,
                          addToCart: addToCart,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
    );
  }
}
