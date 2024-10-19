import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pharmaco/app_colors.dart';

class DateWidget extends StatefulWidget {
   DateWidget({super.key,required this.inputHint});
final String inputHint;
  final TextEditingController dateC = TextEditingController();


  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  final TextEditingController dateC = TextEditingController();

  @override
  Widget build(BuildContext context) {
     return  SizedBox(
                width: MediaQuery.of(context).size.width *.8,
                child: Container(
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                  child: TextFormField(
                    controller: dateC,
                    onTap: () async{
                            var date = await showDatePicker(
                                context: context,
                                firstDate: DateTime(1950),
                                initialDate: DateTime(2000),
                                lastDate: DateTime.now());
                            var formatedDate = DateFormat.yMd().format(date!);
                            dateC.text = formatedDate.toString();
                    
                          },

                     
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: widget.inputHint),
                        style: TextStyle(
                          foreground: Paint()..shader = AppColors.primaryColor.createShader(const Rect.fromLTWH(0, 0, 300, 70))
                        ),
                  ),
                ),
                
              );
  }
}