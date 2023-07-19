import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateCard extends StatelessWidget {
  const DateCard({required this.tex,required this.num,required this.colo,required this.texColo,
    super.key,
  });
  final String tex;
  final String num;
  final Color colo;
  final Color texColo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height * 0.083,
      width: Get.size.width * .12,
      decoration: BoxDecoration(
          color: colo,
          borderRadius: BorderRadius.circular(12)),child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(tex,style: TextStyle(fontSize:Get.size.width * .12*0.5,color: texColo ),),Text(num,style: TextStyle(fontSize:Get.size.width * .12*0.5,fontWeight: FontWeight.w500 ,color: texColo))
            ],
          )),
    );
  }
}
