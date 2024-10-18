import 'package:flutter/material.dart';
import 'package:pharmaco/data/model/product.dart';
import 'package:pharmaco/view/screen/product_details_screen.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key, required this.model});
  final Product model;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(
                      model: widget.model,
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Image.network(
                  widget.model.urlToImg ??
                      'https://img.freepik.com/premium-photo/medicine-bottles-pills-with-health-symbols-symbolizing-healthcare-medication-wellness_981101-66158.jpg',
                  errorBuilder: (BuildContext context, Object error,
                      StackTrace? stackTrace) {
                    return const Text('Error loading image');
                  },
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  widget.model.productName ?? 'medicine name',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  '${widget.model.price}\$',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
