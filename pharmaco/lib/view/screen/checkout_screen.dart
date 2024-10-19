import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/data/model/cart.dart';
import 'package:pharmaco/view/screen/checkout_total_screen.dart';
import 'package:pharmaco/view/widget/checkout_card.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class CheckoutScreen extends StatefulWidget {
   CheckoutScreen({super.key, required this.localCart});
final Cart localCart;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
       String? _selectedValue;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: const CustomAppBarr(title: " Checkout ",iconDiplay: true,),
        body: Column(
          children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ListView.builder(
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

//              Row(
//                children: [
//                  Padding(
//                    padding: EdgeInsets.only(left: 10, ),

//                    child: Text(
//                         'Payment Method',
//                         style: TextStyle(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.primaryColor.colors.first,
//                         ),
//                       ),
//                  ),
//                ],
//              ),
//              // ignore: prefer_const_constructors
//              SizedBox(height: 30,),
//               Container(//padding: const EdgeInsets.only(left: 5,top: 0),
//              // alignment: Alignment(-1.0, -1.0),
//                  // padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),

//                 height: 50,
//                     //width: 40,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100),
//                      // gradient: AppColors.primaryColor,
//                     ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(1.0),
//                   child: RadioListTile(
                    
//                     title: const Text('Cash On Deliery',style: TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                             color: AppColors.black,
//                           ),),
//                     value: 'Cash_On_Deliery',
//                     groupValue: _selectedValue, // Set to null to make it independent
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedValue= value;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//              SizedBox(height: 30,),

//               GenericFlexibleButton(
//               text: "Continue",
//               minWidth: MediaQuery.of(context).size.width * .4,
//               minHeight: MediaQuery.of(context).size.height * .03,
//               fontSize: 18,
//               onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckoutTotalScreen() ));
// })
//--------------------------------
 //----------------------------------------

            //  SizedBox(height: 30,),
            //   Container(//padding: const EdgeInsets.only(left: 5,top: 0),
            //  // alignment: Alignment(-1.0, -1.0),
            //      // padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),

            //     height: 50,
            //         //width: 40,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(100),
            //          // gradient: AppColors.primaryColor,
            //         ),
            //     child: Padding(
            //       padding: const EdgeInsets.all(1.0),
            //       child: RadioListTile(
                    
            //         title: const Text('Cash_only',style: TextStyle(
            //                 fontSize: 25,
            //                 fontWeight: FontWeight.bold,
            //                 color: AppColors.black,
            //               ),),
            //         value: 'Cash_only',
            //         groupValue:_selectedValue , // Set to null to make it independent
            //         onChanged: (value) {
            //           setState(() {
            //            _selectedValue =value;
            //           });
                     
            //           // Handle selection logic
            //           PaymentSuccessScreen();
            //         },
            //       ),
            //     ),
            //   ),
//---------------------------------
                
              ],
            ),
                  );
          
  }
}