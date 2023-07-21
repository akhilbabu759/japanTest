import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japantest/screen/profile/controller/profile_controller.dart';

class CollectionCheckBox extends StatelessWidget {
  const CollectionCheckBox({
    super.key,
    required this.control,required this.tex1,required this.tex2,required this.tex3,required this.tex4,required this.check1,required this.check2,required this.check3,required this.check4,required this.toCheck1,required this.toCheck2,required this.toCheck3,required this.toCheck4,
  });

  final ProfileController control;
  final String tex1;
  final String tex2;
  final String tex3;
  final String tex4;
   final bool check1;
  final bool check2;
  final bool check3;
  final bool check4;
  final int toCheck1;
  final int toCheck2;
  final int toCheck3;
  final int toCheck4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Get.size.height*0.045,
        width: Get.size.width,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween, // evenly distribute checkboxes
          children: [
            Expanded(
              child: CheckboxListTile(
                title: Text(tex1),
                value: check1,
                onChanged: (value) {
                  toCheck1==1?control.checkupdate1():control.checkupdate5();
                },controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            Expanded(
              child: CheckboxListTile(
                title: Text(tex2),
                value: check2,
                onChanged: (value) {
                  toCheck2==2?control.checkupdate2():control.checkupdate6();
                },controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            Expanded(
              child: CheckboxListTile(
                title: Text(tex3),
                value: check3,
                onChanged: (value) {
                  toCheck3==3?control.checkupdate3():control.checkupdate7();
                },controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            Expanded(
              child: CheckboxListTile(
                title: Text(tex4),
                value: check4,
                onChanged: (value) {
                  toCheck4==4?control.checkupdate4():control.checkupdate8();
                },controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
          ],
        ),
      );
  }
}
