import 'package:pharmaco/data/model/cart.dart';

class User {
  late int id;
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String urlToImg;
  String? homeAddress;
  late String accessToken;
  late String refreshToken;
  Cart currentCart;

  //"late" & default values of id, accessToken & refreshToken should be removed in the near future when implement db
  User(
      {this.id = 0,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phoneNumber,
      required this.currentCart,
      this.homeAddress,
      this.urlToImg = "https://placehold.co/400",
      this.accessToken = "",
      this.refreshToken = ""});
}
