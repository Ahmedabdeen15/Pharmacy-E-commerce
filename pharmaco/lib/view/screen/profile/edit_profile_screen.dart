import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/screen/main_screen.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/date_widget.dart';
import 'package:pharmaco/view/widget/email_input_widget.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';
import 'package:pharmaco/view/widget/input_name_widget.dart';
import 'package:pharmaco/view/widget/phone_num_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  final nameController = TextEditingController();
  final emailController = TextEditingController(); 
  final phoneController = TextEditingController();
  final dateC = TextEditingController(); 


  Future<void> _updateSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', nameController.text);
    prefs.setString('email', emailController.text);
    prefs.setString('phone', phoneController.text);
    prefs.setString('birthDate', dateC.text);
  }

  @override
  void initState() {
    super.initState();
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    final prefs = await SharedPreferences.getInstance();
    nameController.text = prefs.getString('name') ?? '';
    emailController.text = prefs.getString('email') ?? '';
    phoneController.text = prefs.getString('phone') ?? '';
    dateC.text = prefs.getString('birthDate') ?? '';
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(
        title: " Profile ",
        iconDiplay: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: AppColors.primaryColor.colors.last,
              // decoration: BoxDecoration(gradient: AppColors.primaryColor),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    child: Icon(
                      Icons.person,
                      size: 140,
                      color: Color.fromARGB(255, 0, 186, 211),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
       Column(
         children: [
           Container(
               alignment: Alignment.topLeft,
               padding: const EdgeInsets.only(left: 50, bottom: 10),
               child: const Text("Full Name ",
                   style: TextStyle(
                     color: AppColors.black,
                     fontSize: 18,
                   ))),
            Center(
               child: InputNameWidget(
             inputHint: "Mohamed Tharwat",
             controller: nameController,
           )),
         ],
       ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 50, bottom: 10),
                    child: const Text("Email ",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                        ))),
                Center(
                    child: EmailInputWidget(
                  inputHint: "example@example.com",
                  controller: emailController,
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 50, bottom: 10),
                    child: const Text("Phone ",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                        ))),
                 Center(
                    child: PhoneNumWidget(
                      
                  inputHint: "01200000000",
                  controller: phoneController,
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 50, bottom: 10),
                    child: const Text("Birth Date ",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 18,
                        ))),
                Center(
                    child: DateWidget(
                  inputHint: "MM'\'DD'\'YY",
                  controller: dateC,
                )),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GenericFlexibleButton(
                text: "Upate Profile",
                minWidth: MediaQuery.of(context).size.width * .4,
                minHeight: MediaQuery.of(context).size.height * .03,
                fontSize: 18,
                 onPressed: () async {
                        await _updateSharedPreferences();
                        // Handle update success (e.g., show a message)
                     
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainScreen()));
                    },),
                   
          ],
        ),
      ),
    );
  }
}
