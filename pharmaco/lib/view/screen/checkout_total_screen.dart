import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/payment_success_screen.dart';
import 'package:pharmaco/view/screen/profile/alarm_delete_account.dart';
import 'package:pharmaco/view/screen/profile/notification_setting_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class CheckoutTotalScreen extends StatelessWidget {
  const CheckoutTotalScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: CustomAppBarr(title: " Checkout ",iconDiplay: true,),
        body: Container(padding: const EdgeInsets.only(left: 10,top: 10),
        child: Column(
          children: [
            
            const SizedBox(height: 10,),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              
              child: Row(children: [
                Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: AppColors.primaryColor,
                ),
                  child: const Icon(
                    Icons.location_on_sharp,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(width: 15),

                const Text(
                  '16 miamy st. , Alex ,Egypt',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),

                const Spacer(),
              
                    IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationSettingScreen() ));

                    },
                    icon: const Icon(Icons.edit),
                    color: AppColors.black,
                  ),
                
              ]),
            ),
//----------------------------------------------------------------------------
            
            const SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              
              child: Row(children: [
                Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: AppColors.primaryColor,
                ),
                  child: const Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15,),
                const Text(
                  'example @example.com',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),

                const Spacer(),
              
                    IconButton(onPressed: (){
                    },
                    icon: const Icon(Icons.edit),
                    color: AppColors.black,
                  ),
                
              ]),
            ),
//----------------------------------------------------------------------------
            const SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: double.infinity,
              
              child: Row(children: [
                Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: AppColors.primaryColor,
                ),
                  child: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15,),
                const Text(
                  '01200000000',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),

                const Spacer(),
              
                    IconButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const AlarmDeleteAccount() ));

                    },
                    icon: const Icon(Icons.edit),
                    color: AppColors.black,
                  ),
                
              ]),
            ),
            const SizedBox(height: 20,),

             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10, ),

                   child: Text(
                        'Proaduct Details',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor.colors.first,
                        ),
                      ),
                 ),
               ],
             ),
             //-------------------------
             const SizedBox(height: 20),
              const Row(
               children: [
                 Padding(
                   padding: EdgeInsets.only(left: 10, ),

                   child: Text(
                        'Sub Total',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      
                  
                 ),
                  
                Spacer(),

                 Text(
                        '\$ 450',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
               ],
             ),


 //--------------------------------------------------------- 
        const SizedBox(height: 20),

            const Row(
               children: [
                 Padding(
                   padding: EdgeInsets.only(left: 10, ),

                   child: Text(
                        'Tax',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      
                  
                 ),
                  
                Spacer(),

                 Text(
                        '\$ 14',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
               ],
             ),
 
//-----------------------------------------------------
       const SizedBox(height: 20),

            const Row(
               children: [
                 Padding(
                   padding: EdgeInsets.only(left: 10, ),

                   child: Text(
                        'shipping',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      
                  
                 ),
                  
                Spacer(),

                 Text(
                        '\$ 36',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
               ],
             ),

//----------------------------------------------------
        const SizedBox(height: 20),

            const Row(
               children: [
                 Padding(
                   padding: EdgeInsets.only(left: 10, ),

                   child: Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      
                  
                 ),
                  
                Spacer(),

                 Text(
                        '\$ 1000',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
               ],
             ),

//----------------------------------------------------
         const SizedBox(height: 30),
            GenericFlexibleButton(
              text: "Continue",
              minWidth: MediaQuery.of(context).size.width * .4,
              minHeight: MediaQuery.of(context).size.height * .03,
              fontSize: 18,
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentSuccessScreen() ));
})
          ],
        ),
      ),
      
    );
  }
}