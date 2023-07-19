import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [SizedBox(height: Get.size.height*0.05,),
            Padding(
              padding:  EdgeInsets.only(left:Get.size.width*0.08),
              child: Row(
                children: [
                  Container(height: Get.size.height*0.05,width: Get.size.width*0.6,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 237, 237, 237),borderRadius: BorderRadius.circular(30)),
                 child: Center(child: Padding(
                   padding: const EdgeInsets.only(left:16.0),
                   child: Row(
                     children: [
                       Text('北海道, 札幌市'),
                     ],
                   ),
                 )), ),SizedBox(width:Get.size.width*0.6*0.08 ,), Icon(CupertinoIcons.book_fill,size: Get.size.height*0.05,),Icon(Icons.favorite_border_outlined,color: Colors.red,size: Get.size.height*0.05,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}