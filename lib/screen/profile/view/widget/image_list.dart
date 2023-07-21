
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japantest/screen/profile/controller/profile_controller.dart';

class ImageList extends StatelessWidget {
  const ImageList({ required this.tex,required this.hint,
  required this.imge1,required this.imge2,required this.imge3,required this.imgecheck1,required this.imgecheck2,required this.imgecheck3,
    super.key,
  });
final String tex;
final String hint;
final int imgecheck1;
final int? imgecheck2;
final int? imgecheck3;
final File? imge1;
final File? imge2;
final File? imge3;
  @override
  Widget build(BuildContext context) {
    final contro=Get.put(ProfileController());
    return Padding(
      padding: const EdgeInsets.only(left:18.0,right: 18,bottom: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  text: tex,
                  style: TextStyle(color: Colors.black),
                  children: [
                TextSpan(
                  text: '*',
                  style: TextStyle(color: Colors.red),
                ),
                TextSpan(
                    text: hint,
                    style: TextStyle(
                        color: Color.fromARGB(255, 159, 159, 159)))
              ])),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              DottedBorder(
                color: Color.fromARGB(255, 172, 172, 172),
                strokeCap: StrokeCap.butt,
                child:imge1!=null? Stack(
                  children: [Image.file(
                  imge1! ,
                   height: Get.size.width * 0.3,
                  
                      width: Get.size.width * 0.25,
                  fit: BoxFit.cover,
                ),Positioned(top: 0,right: 0,
                  child: IconButton(onPressed: () {
                    imgecheck1==1? contro.imgupdate1():4==imgecheck1?contro.imgupdate4():7==imgecheck1?contro.imgupdate7():10==imgecheck1?contro.imgupdate10():'';
                  }, icon: Icon(Icons.highlight_remove_outlined,color: const Color.fromARGB(255, 120, 120, 120),)),
                )]
                ): GestureDetector(onTap: () {
  imgecheck1==1? contro.getImageFromGallery1():4==imgecheck1?contro.getImageFromGallery4():7==imgecheck1?contro.getImageFromGallery7():10==imgecheck1?contro.getImageFromGallery10():'';
},
  child:   Container(
  
                    height: Get.size.width * 0.3,
  
                    width: Get.size.width * 0.25,
  
                    decoration: BoxDecoration(
  
                        // color: Colors.amber,
  
                        borderRadius: BorderRadius.circular(10)),
  
                    child: Column(
  
                        mainAxisAlignment: MainAxisAlignment.center,
  
                        children: [
  
                          IconButton(
  
                              onPressed: () {
  
                                
  
                                
  
  
  
                              },
  
                              icon: Icon(
  
                                Icons.image_outlined,
  
                                size: 30,
  
                                color:
  
                                    Color.fromARGB(255, 172, 172, 172),
  
                              )),
  
                              Text('写真を追加',style: TextStyle(color: Color.fromARGB(255, 172, 172, 172)),)
  
                        ]),
  
                  ),
),
              ),
              SizedBox(
                width: Get.size.width * 0.026,
              ),
              DottedBorder(
                color: Color.fromARGB(255, 172, 172, 172),
                strokeCap: StrokeCap.butt,
                child:imge2!=null? Stack(
                  children:[ Image.file(
                  imge2! ,
                   height: Get.size.width * 0.3,
                  
                      width: Get.size.width * 0.25,
                  fit: BoxFit.cover,
                ),Positioned(top: 0,right: 0,
                  child: IconButton(onPressed: () {
                    2==imgecheck2? contro.imgupdate2():5==imgecheck2?contro.imgupdate5():8==imgecheck2?contro.imgupdate8():11==imgecheck2?contro.imgupdate11():'';
                  }, icon: Icon(Icons.highlight_remove_outlined,color: const Color.fromARGB(255, 120, 120, 120),)),
                )],
                ): GestureDetector(onTap: () {
  2==imgecheck2? contro.getImageFromGallery2():5==imgecheck2?contro.getImageFromGallery5():8==imgecheck2?contro.getImageFromGallery8():11==imgecheck2?contro.getImageFromGallery11():'';
},
  child: Container(
                  height: Get.size.width * 0.3,
                  width: Get.size.width * 0.25,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.image_outlined,
                              size: 30,
                              color:
                                  Color.fromARGB(255, 172, 172, 172),
                            )),
                            Text('写真を追加',style: TextStyle(color: Color.fromARGB(255, 172, 172, 172)),)
                      ]),
                ),
              ),),
              SizedBox(
                width: Get.size.width * 0.026,
              ),
              DottedBorder(
                color: Color.fromARGB(255, 172, 172, 172),
                strokeCap: StrokeCap.butt,
                child:imge3!=null? Stack(
                  children:[ Image.file(
                  imge3! ,
                   height: Get.size.width * 0.3,
                  
                      width: Get.size.width * 0.25,
                  fit: BoxFit.cover,
                ),Positioned(top: 0,right: 0,
                  child: IconButton(onPressed: () {
                     3==imgecheck3? contro.imgupdate3():6==imgecheck3?contro.imgupdate6():9==imgecheck3?contro.imgupdate9():12==imgecheck3?contro.imgupdate12():'';
                  }, icon: Icon(Icons.highlight_remove_outlined,color: const Color.fromARGB(255, 120, 120, 120),)),
                )],
                ): GestureDetector(onTap: () {
  3==imgecheck3? contro.getImageFromGallery3():6==imgecheck3?contro.getImageFromGallery6():9==imgecheck3?contro.getImageFromGallery9():12==imgecheck3?contro.getImageFromGallery12():'';
},
  child: Container(
                  height: Get.size.width * 0.3,
                  width: Get.size.width * 0.25,
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.image_outlined,
                              size: 30,
                              color:
                                  Color.fromARGB(255, 172, 172, 172),
                            )),
                            Text('写真を追加',style: TextStyle(color: Color.fromARGB(255, 172, 172, 172)),)
                      ]),
                ),
              ),)
            ],
          )
        ],
      ),
    );
  }
}
