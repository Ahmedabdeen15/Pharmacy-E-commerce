import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/data/model/cart.dart';
import 'package:pharmaco/data/model/product.dart';
import 'package:pharmaco/view/screen/main_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/product_small_card.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({
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
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int _currentValue = 1;
  bool _isExpanded = false;

  void _increment() {
    setState(() {
      _currentValue++;
    });
  }

  void _decrement() {
    setState(() {
      if (_currentValue > 0) {
        _currentValue--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String displayText = widget.model.description ?? "No Product Details";
    if (!_isExpanded && widget.model.description!.length > 250) {
      displayText = '${widget.model.description!.substring(0, 250)}...';
    }

    return Scaffold(
      appBar: const CustomAppBarr(
        title: 'Product Details',
        iconDiplay: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Product Image
                    Center(
                      child: SizedBox(
                        width: 320,
                        height: 270,
                        child: Image.network(
                          widget.model.urlToImg ??
                              "https://placehold.co/320x270/png",
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          (loadingProgress.expectedTotalBytes ??
                                              1)
                                      : null,
                                ),
                              );
                            }
                          },
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                            return Image.network(
                                "https://placehold.co/320x270/png");
                          },
                          width: 320,
                          height: 270,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Product Details Section
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.model.productName!,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const SizedBox(height: 15),

                          // Price and Quantity
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$ ${widget.model.price}",
                                style: const TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 32.0,
                                    height: 32.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFD8D8D8),
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed:
                                          _currentValue > 1 ? _decrement : null,
                                      iconSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '$_currentValue',
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    width: 32.0,
                                    height: 32.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFD8D8D8),
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: _increment,
                                      iconSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 30),

                          // Product Description
                          const Text(
                            "Product Details",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            displayText,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          if (widget.model.description!.length > 250)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isExpanded = !_isExpanded;
                                });
                              },
                              child: Text(
                                _isExpanded ? "Read Less" : "Read More",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          const SizedBox(height: 20),

                          // Related Products Section
                          const Text(
                            "Related Products",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),

                          SizedBox(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.relatedProducts.length,
                              itemBuilder: (context, index) {
                                return ProductSmallCard(
                                  model: widget.relatedProducts[index],
                                  relatedProducts: widget.relatedProducts,
                                  localCart: widget.localCart,
                                  localWishlist: widget.localWishlist,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GenericFlexibleButton(
                text: "Add to Cart",
                minWidth: 142,
                minHeight: 41,
                fontSize: 20,
                onPressed: () {
                  widget.localCart.addToList(widget.model, _currentValue);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(
                        initialIndex: 1,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(width: 20),
              Container(
                constraints: const BoxConstraints(
                  minWidth: 142,
                  minHeight: 41,
                ),
                decoration: BoxDecoration(
                  gradient: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        widget.localWishlist.addToList(widget.model, 1);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(
                              initialIndex: 2,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 20.0,
                        ),
                        backgroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      child: const Text(
                        "Add to Wishlist",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
