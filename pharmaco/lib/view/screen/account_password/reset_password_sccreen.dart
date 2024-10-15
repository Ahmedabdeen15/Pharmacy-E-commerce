import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/account_password/reset_password_secound_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/email_input_widget.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class ResetPasswordSccreen extends StatelessWidget {
  const ResetPasswordSccreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarr(title: "Reset Password"),
        body: Container(padding: EdgeInsets.only(left: 10,top: 10),
        child: Column(
          children: [
            Container(alignment:Alignment.centerLeft,padding: EdgeInsets.only(left: 17), child:  Text("We have sent an email to y*********@g****.com",style: TextStyle(fontSize: 15,color: AppColors.black),)),
            SizedBox(height: 10,),
            Container(alignment:Alignment.centerLeft,padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*.1),child:  Text("Enter Email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            EmailInputWidget(inputHint: "ahmed@gmail.com"),
            SizedBox(height: 20,),
            GenericFlexibleButton(text: "Continue", minWidth: MediaQuery.of(context).size.width*.8, minHeight: MediaQuery.of(context).size.height*.09, fontSize: 24, onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordSecoundScreen() ));
            })
            ,Container(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.25,top: 10),
              child: Row(
                children: [
                  Text("Don't Receive Code",style: TextStyle(fontSize: 10,color: AppColors.black),),
                  TextButton(onPressed: (){}, child:  Text("Resend",style: TextStyle(fontSize: 10,color: AppColors.primaryColor.colors.first),))
                ],
              ),
            )

            
          ],
        ),
      ),
    );
  }
}