import 'package:flutter/material.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/password_widget.dart';

class ResetPasswrdThirdScreen extends StatelessWidget {
  const ResetPasswrdThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: CustomAppBarr(title: "Reset Password"),
        body: Container(padding: EdgeInsets.only(left: 10,top: 10),
        child: Column(
          children: [
            Container(alignment:Alignment.centerLeft,padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*.1),child:  Text("Password ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            PasswordWidget(),
             SizedBox(height: 10,),
            Container(alignment:Alignment.centerLeft,padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*.1),child:  Text("Confirm Password ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            PasswordWidget(),
            SizedBox(height: 20,),
            GenericFlexibleButton(text: "Change Password", minWidth: MediaQuery.of(context).size.width*.8, minHeight: MediaQuery.of(context).size.height*.09, fontSize: 24, onPressed: (){})
                     
          ],
        ),
      ),
      
    );
  }
}