import 'package:flutter/material.dart';
import 'package:pharmaco/view/screen/profile/alarm_pasword_changed.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/password_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResetPasswrdThirdScreen extends StatefulWidget {
  const ResetPasswrdThirdScreen({super.key});

  @override
  State<ResetPasswrdThirdScreen> createState() => _ResetPasswrdThirdScreenState();
}

class _ResetPasswrdThirdScreenState extends State<ResetPasswrdThirdScreen> {
final passwordController = TextEditingController(); 


  Future<void> _updateSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('password', passwordController.text);
  }

  
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
            PasswordWidget(
            controller: passwordController,

            ),
            SizedBox(height: 20,),
            GenericFlexibleButton(text: "Change Password", minWidth: MediaQuery.of(context).size.width*.8, minHeight: MediaQuery.of(context).size.height*.09, fontSize: 24,
             onPressed: () async {
                        await _updateSharedPreferences();
                        // Handle update success (e.g., show a message)
                    
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AlarmPaswordChanged()));
                    },),
                     
          ],
        ),
      ),
      
    );
  }
}