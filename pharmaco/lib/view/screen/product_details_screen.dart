import 'package:flutter/material.dart';
import 'package:pharmaco/data/model/product.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final Product model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarr(
        title: 'Product Details',
        iconDiplay: true,
      ),
      body: Center(
        child: Text('${model.productName}'),
      ),
    );
  }
}
