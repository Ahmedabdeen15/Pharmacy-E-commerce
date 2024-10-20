import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/account_password/reset_password_sccreen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/password_widget.dart';

class PasswordManagerScreen extends StatelessWidget {
  const PasswordManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: CustomAppBarr(title: "Password Manager",iconDiplay: true,),
        body: Container(padding: EdgeInsets.only(left: 10,top: 10),
        child: Column(
          children: [
            Container(alignment:Alignment.centerLeft,padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*.1),child:  Text("Current Password ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            PasswordWidget(),
            TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  ResetPasswordSccreen() ));
                    }, child:Container(alignment:Alignment.topRight ,
                     padding: EdgeInsets.only(right: 30,bottom: 20),child: Text("Forget Password",style: TextStyle(color: AppColors.primaryColor.colors.first,fontSize: 10,))) ),

             SizedBox(height: 5,),
            Container(alignment:Alignment.centerLeft,padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*.1),child:  Text("New Password ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            PasswordWidget(),
             SizedBox(height: 10,),
            Container(alignment:Alignment.centerLeft,padding:EdgeInsets.only(left:  MediaQuery.of(context).size.width*.1),child:  Text("Confirm New Password ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            PasswordWidget(),
            SizedBox(height: 200,),
            GenericFlexibleButton(text: "Change Password", minWidth: MediaQuery.of(context).size.width*.8, minHeight: MediaQuery.of(context).size.height*.09, fontSize: 24, onPressed: (){})
                     
          ],
        ),
      ),
      
    );
  }
}