import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';
import 'package:pharmaco/view/widget/custom_app_bar.dart';
import 'package:pharmaco/view/widget/generic_flexible_button.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarr(
        title: 'Help',
        iconDiplay: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.1, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: AppColors.white,
                  minWidth: 142,
                  height: 55,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: const BorderSide(
                        color: Color(0xFF33E4DB), width: 2), // Add blue border
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      'FAQ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                // GenericFlexibleButton(
                //     text: 'FAQ',
                //     minWidth: 142,
                //     minHeight: 41,
                //     fontSize: 14,
                //     onPressed: () {}),
                GenericFlexibleButton(
                    text: 'Contact Us',
                    minWidth: 142,
                    minHeight: 55,
                    fontSize: 20,
                    onPressed: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: AppColors.primaryColor,
                ),
                child: const Icon(
                  Icons.headphones,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Customer service',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: AppColors.primaryColor,
                ),
                child: const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Website',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: AppColors.primaryColor,
                ),
                child: const Icon(
                  Icons.call,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Whatsapp',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: AppColors.primaryColor,
                ),
                child: const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Facebook',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: AppColors.primaryColor,
                ),
                child: const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Instagram',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
