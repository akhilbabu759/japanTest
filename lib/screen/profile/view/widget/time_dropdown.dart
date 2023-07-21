
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japantest/screen/profile/controller/profile_controller.dart';

class TimeDropDown extends StatelessWidget {
  const TimeDropDown({required this.tex,required this.value1,required this.value2,
    super.key,
  });
  final String tex;
  final String value1;
  final String value2;

  @override
  Widget build(BuildContext context) {
    final control=Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(left:18.0,right: 18),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(text: tex,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17), children: [
            TextSpan(text: '*', style: TextStyle(color: Colors.red))
          ])),SizedBox(height: 10,),
          Row(
            children: [
              Container(height: 50,width: Get.size.width*0.37,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Color.fromARGB(255, 206, 204, 204))),
        child: Center(
              child: DropdownButton(underline: SizedBox(),value: value1,
              icon: Icon(CupertinoIcons.chevron_down,color: Color.fromARGB(255, 170, 170, 170),),
              iconSize: 35,
              elevation: 16,
                items:  <String>[
                '10:00',
                '11:00',
                '12:00',
                '13:00',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (value) {
                log('fifun');
                control.drop1==value1?control.drop1Change(value!):control.drop3==value1?control.drop3Change(value!):'';
                
              },),
        ),
      ),Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('~',style: TextStyle(fontSize: 27),),
      ),Container(height: 50,width: Get.size.width*0.37,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Color.fromARGB(255, 206, 204, 204))),
        child: Center(
              child: DropdownButton(underline: SizedBox(),value: value2,
              icon: Icon(CupertinoIcons.chevron_down,color: Color.fromARGB(255, 170, 170, 170),),
              iconSize: 35,
              elevation: 16,
                items:  <String>[
                '10:00',
                '11:00',
                '12:00',
                '13:00',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(), onChanged: (value) {
                control.drop2==value2?control.drop2Change(value!):control.drop4==value2?control.drop4Change(value!):'';
                
              },),
        ),
      ),
            ],
          )
        ],
      ),
    );
  }
}
