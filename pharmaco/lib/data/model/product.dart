class Product {
  int id;
  String productName;
  String urlToImg;
  int quantity;
  String description;
  double price;
  Product({
    this.id = 0,
    required this.productName,
    required this.urlToImg,
    required this.quantity,
    required this.description,
    required this.price,
  });
}
