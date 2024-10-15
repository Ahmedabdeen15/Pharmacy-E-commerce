import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/password_widget.dart';

class VerifyYourAccountSecoundScreen extends StatelessWidget {
  const VerifyYourAccountSecoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarr(title: "Verify your Account"),
        body: Container(padding: EdgeInsets.only(left: 10,top: 10),
        child: Column(
          children: [
            Container(alignment:Alignment.centerLeft,padding: EdgeInsets.only(left: 17), child:  Text("Enter your new password",style: TextStyle(fontSize: 15,color: AppColors.black),)),
            SizedBox(height: 10,),
            Container(alignment:Alignment.centerLeft,padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*.1),child:  Text("Password ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            PasswordWidget(),
             SizedBox(height: 10,),
            Container(alignment:Alignment.centerLeft,padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*.1),child:  Text("Confirm Password ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            PasswordWidget(),
            SizedBox(height: 20,),
            GenericFlexibleButton(text: "Finish", minWidth: MediaQuery.of(context).size.width*.8, minHeight: MediaQuery.of(context).size.height*.09, fontSize: 24, onPressed: (){})
                     
          ],
        ),
      ),
      
    );
  }
}