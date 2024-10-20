import 'package:flutter/material.dart';
import 'package:pharmaco/data/model/cart.dart';
import 'package:pharmaco/data/model/product.dart';
import 'package:pharmaco/view/screen/payment_success_screen.dart';
import 'package:pharmaco/view/screen/profile/edit_profile_screen.dart';
import 'package:pharmaco/view/widget/checkout_card.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/payment_method_card.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PaymentMethod { credit, cash }

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({
    super.key,
    required this.localCart,
  });
  final Cart localCart;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String? _email;
  String? _phone;

  @override
  void initState() {
    super.initState();
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _email = prefs.getString('email') ?? '';
    _phone = prefs.getString('phone') ?? '';
    });
    
  }

  PaymentMethod selectedMethod = PaymentMethod.cash;
  void selectPaymentMethod(PaymentMethod method) {
    setState(() {
      selectedMethod = method;
    });
  }

  String formatAddress(String address, int charLimit) {
    if (address.length > charLimit) {
      // Split the string and insert a line break after charLimit characters
      return '${address.substring(0, charLimit)}\n${address.substring(charLimit)}';
    } else {
      return address;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(title: 'checkout'),
      body: widget.localCart.products.isEmpty
          ? const Center(
              child: Text(
                "checkout is empty",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.all(20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.localCart.products.length,
                      itemBuilder: (context, index) {
                        var temp =
                            widget.localCart.products.entries.elementAt(index);
                        return CheckoutCard(
                          model: temp.value.product,
                          count: temp.value.quantity,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Payment Method",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(51, 228, 219, 1)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PaymentMethodCard(
                            methodName: 'Credit & Debit Card',
                            methodIcon: Icons.credit_card,
                            isSelected: selectedMethod == PaymentMethod.credit,
                            onTap: () =>
                                selectPaymentMethod(PaymentMethod.credit),
                          ),
                          const SizedBox(height: 10),
                          PaymentMethodCard(
                            methodName: 'Cash on Delivery',
                            methodIcon: Icons.paid,
                            isSelected: selectedMethod == PaymentMethod.cash,
                            onTap: () =>
                                selectPaymentMethod(PaymentMethod.cash),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(51, 228, 219, 1)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Color.fromARGB(255, 51, 228, 219),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "16 Elkab st.,  Green, Muharram Bek,\n Alexandria, Egypt",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const EditProfileScreen(),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 51, 228, 219),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(51, 228, 219, 1)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 51, 228, 219),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                _email ?? "example@example.com",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const EditProfileScreen(),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 51, 228, 219),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Phone",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(51, 228, 219, 1)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.phone,
                                color: Color.fromARGB(255, 51, 228, 219),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                _phone ?? "+02 01511111100",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const EditProfileScreen(),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 51, 228, 219),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Product Details",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(51, 228, 219, 1)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Sub Total",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    Text(
                                      widget.localCart.totalPrices
                                          .toStringAsFixed(2),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "TAX",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    Text(
                                      "\$${(widget.localCart.totalPrices * 0.14).toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Shipping",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Text(
                                      "\$50",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Total",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    Text(
                                      "\$ ${((widget.localCart.totalPrices * 1.14) + 50).toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Total: \$${widget.localCart.totalPrices.toStringAsFixed(2)}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GenericFlexibleButton(
                    text: "checkout",
                    minWidth: 200,
                    minHeight: 50,
                    fontSize: 24,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PaymentSuccessScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
    );
  }
}
