import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/account_password/reset_password_sccreen.dart';
import 'package:pharmaco/view/screen/profile/alarm_delete_account.dart';
import 'package:pharmaco/view/screen/profile/notification_setting_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: CustomAppBarr(title: " Setting ",iconDiplay: true,),
        body: Container(padding: EdgeInsets.only(left: 10,top: 10),
        child: Column(
          children: [
            
            SizedBox(height: 10,),

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
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(width: 15,),

                const Text(
                  'Notification Setting',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),

                const Spacer(),
              
                    IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationSettingScreen() ));

                    },
                    icon: Icon(Icons.arrow_forward_ios),
                    color: AppColors.black,
                  ),
                
              ]),
            ),
//----------------------------------------------------------------------------
            
            SizedBox(height: 20,),

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
                    Icons.password_sharp,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15,),
                const Text(
                  'Password Manager',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),

                const Spacer(),
              
                    IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordSccreen() ));
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                    color: AppColors.black,
                  ),
                
              ]),
            ),
//----------------------------------------------------------------------------
            SizedBox(height: 20,),

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
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15,),
                const Text(
                  'Delete Account',
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),

                const Spacer(),
              
                    IconButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const AlarmDeleteAccount() ));

                    },
                    icon: Icon(Icons.arrow_forward_ios),
                    color: AppColors.black,
                  ),
                
              ]),
            ),
 //---------------------------------------------------------           
          ],
        ),
      ),
      
    );
  }
}