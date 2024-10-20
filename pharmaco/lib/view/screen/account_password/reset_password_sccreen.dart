import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/account_password/reset_password_secound_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/email_input_widget.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResetPasswordSccreen extends StatefulWidget {
  const ResetPasswordSccreen({super.key});

  @override
  State<ResetPasswordSccreen> createState() => _ResetPasswordSccreenState();
}

class _ResetPasswordSccreenState extends State<ResetPasswordSccreen> {

   final TextEditingController emailController = TextEditingController();
  String savedEmail = '';  // Variable to store saved email

  @override
  void initState() {
    super.initState();
    _getSavedEmail();  // Call method to get saved email when the screen loads
  }

  // Method to retrieve saved email from SharedPreferences
  Future<void> _getSavedEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      savedEmail = prefs.getString('email') ?? '';  // Get the saved email or an empty string
    });
  }

  // Method to check if the entered email matches the saved email
  void _checkEmailMatch() {
    if (emailController.text == savedEmail) {
      // If emails match, navigate to the second reset password screen
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ResetPasswordSecoundScreen()));
    } else {
      // Show an error if the emails don't match
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("The entered email does not match the registered email."),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"),
                )
              ],
            );
          });
    }
  }
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
            EmailInputWidget(inputHint: "ahmed@gmail.com",controller: emailController,),
            SizedBox(height: 20,),
            GenericFlexibleButton(text: "Continue", minWidth: MediaQuery.of(context).size.width*.8, minHeight: MediaQuery.of(context).size.height*.09, fontSize: 24, onPressed: _checkEmailMatch, )
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