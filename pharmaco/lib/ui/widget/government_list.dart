import 'package:flutter/material.dart';
import 'package:pharmaco/app_colors.dart';

class GovernmentList extends StatefulWidget {
  const GovernmentList({super.key});

  @override
  State<GovernmentList> createState() => _GovernmentListState();
}

class _GovernmentListState extends State<GovernmentList> {

   String? selectedGovernorate;

  final List<String> governorates = [
    'Cairo',
    'Alexandria',
    'Giza',
    'Dakahlia',
    'Qalyubia',
    'Gharbia',
    'Sharqia',
    'Kafr El Sheikh',
    'Dumyat',
    'Port Said',
    'Suez',
    'Ismailia',
    'North Sinai',
    'South Sinai',
    'Faiyum',
    'Minya',
    'Beni Suef',
    'Asyut',
    'Sohag',
    'Qena',
    'Luxor',
    'Aswan',
    'Red Sea',
    'Matrouh',
    'New Valley',
    'Damietta',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

 body: Center(
        child: DropdownButton<String>(
          hint: Text('Select Governorate',style: TextStyle(foreground: Paint()..shader = AppColors.primaryColor.createShader(const Rect.fromLTWH(0, 0, 300, 70))),),
          value: selectedGovernorate,
          onChanged: (String? newValue) {
            setState(() {
              selectedGovernorate = newValue;
            });
          },
          items: governorates.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,style: TextStyle(foreground: Paint()..shader = AppColors.primaryColor.createShader(const Rect.fromLTWH(0, 0, 300, 70))),),
            );
          }).toList(),
        ),
      ),
    );
  }
}