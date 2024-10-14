import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/account_password/login_screen.dart';
import 'package:pharmaco/view/screen/account_password/signup_screen.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/generic_small_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 210),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*.45,
                      child: Image.asset("assets/logo_color.png")),
                  ),
                ),
                
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Text("Pharmaco",style: TextStyle(color: AppColors.primaryColor.colors.first,fontWeight: FontWeight.bold,fontSize: 30),),
                 )

              ],
              
            ),

         
           Center(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.6,
                      child: Text("Our mission is to provide reliable access to essential medications anytime, anywhere",style: TextStyle(color: AppColors.black,fontSize: 12),)),        
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: GenericFlexibleButton(text: "Log In", minWidth: MediaQuery.of(context).size.width*.5, minHeight: MediaQuery.of(context).size.height*.02, fontSize: 24, onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen() ));
                    }),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: GenericFlexibleButton(text: "Sign Up", minWidth: MediaQuery.of(context).size.width*.5, minHeight: MediaQuery.of(context).size.height*.02, fontSize: 24, onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen() ));
                    }),
                  )
                  

                ],
              ),
            ),
          )
        ],
      ),
      

    );
  }
}