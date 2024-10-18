import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/data/model/product.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> products = [];
  List<Product> filteredProducts = []; // This will hold the filtered products.
  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    getproducts();
    // Listen to changes in the search field and filter products accordingly
    searchController.addListener(_filterProducts);
  }

  getproducts() async {
    String jsonString = await rootBundle.loadString('assets/product_data.json');
    var listOfMap = json.decode(jsonString);
    setState(() {
      products = listOfMap
          .map<Product>((element) => Product.fromjoson(element))
          .toList();
      filteredProducts = products; // Initially, all products are displayed
    });
  }

  // This function filters the products based on the search input
  void _filterProducts() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredProducts = products
          .where((product) =>
              product.productName!.toLowerCase().contains(query) ||
              product.description!
                  .toLowerCase()
                  .contains(query)) // Adjust to your Product model
          .toList();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(title: 'Home'),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'search'),
                  style: TextStyle(
                      foreground: Paint()
                        ..shader = AppColors.primaryColor
                            .createShader(const Rect.fromLTWH(0, 0, 300, 70))),
                ),
              ),
            ),
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return ProductWidget(
                  model: filteredProducts[index]); // Use the filtered list
            },
            itemCount: filteredProducts.length, // Use the filtered list count
          ))
        ],
      ),
    );
  }
}
