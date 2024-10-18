class Product {
  int? id;
  String? productName;
  String? urlToImg;
  int? quantity;
  String? description;
  String? category;
  double? price;
  Product({
    required this.id,
    required this.productName,
    required this.urlToImg,
    required this.quantity,
    required this.description,
    required this.category,
    required this.price,
  });
  Product.fromjoson(Map map) {
    id = map['id'];
    productName = map['productName'];
    price = map['price'];
    description = map['description'];
    category = map['category'];
    urlToImg = map['urlToImg'];
  }
}
