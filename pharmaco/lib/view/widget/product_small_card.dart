import 'package:flutter/material.dart';
import 'package:pharmaco/data/model/cart.dart';
import 'package:pharmaco/data/model/product.dart';
import 'package:pharmaco/view/screen/product_details_screen.dart';

class ProductSmallCard extends StatelessWidget {
  const ProductSmallCard({
    super.key,
    required this.model,
    required this.relatedProducts,
    required this.localCart,
    required this.localWishlist,
  });
  final Product model;
  final List<Product> relatedProducts;
  final Cart localCart;
  final Cart localWishlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(
                      model: model,
                      relatedProducts: relatedProducts,
                      localCart: localCart,
                      localWishlist: localWishlist,
                    )));
      },
      child: Card(
        margin: const EdgeInsets.all(5),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    model.urlToImg ?? "https://placehold.co/100x100/png",
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    (loadingProgress.expectedTotalBytes ?? 1)
                                : null,
                          ),
                        );
                      }
                    },
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                      return Image.network("https://placehold.co/100x100/png");
                    },
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                model.productName != null
                    ? (model.productName!.length > 15
                        ? '${model.productName!.substring(0, 15)}...'
                        : model.productName!)
                    : 'medicine name',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),

              const SizedBox(height: 5),
              Text(
                "\$${model.price}",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
