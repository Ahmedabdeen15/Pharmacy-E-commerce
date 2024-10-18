import 'package:flutter/material.dart';
import 'package:pharmaco/data/model/product.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({
    super.key,
    required this.model,
    required this.addToCart,
  });
  final Product model;
  final void Function(Product) addToCart;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(2.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                model.urlToImg ?? "https://placehold.co/320x270/png",
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
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.productName ?? 'medicine name',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    "\$ ${model.price}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            // Add a Spacer to push the button to the right
            const SizedBox(width: 10),
            Container(
              width: 32.0,
              height: 32.0,
              decoration: const BoxDecoration(
                color: Color(0xFFD8D8D8),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () => addToCart(model),
                iconSize: 16,
                splashRadius: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
