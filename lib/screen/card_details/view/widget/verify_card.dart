import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCard extends StatelessWidget {
  const VerifyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height * 0.27,
      width: Get.size.width * 0.86,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),boxShadow: [ BoxShadow(
    color: Colors.grey.withOpacity(0.08),
    spreadRadius: 5,
    blurRadius: 10,
    offset: Offset(0, 3), // changes the position of the shadow
                ),],),child:  Padding(
    padding: const EdgeInsets.only(left:18.0,right: 18),
    child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, // Number of columns in the grid
            crossAxisSpacing: 20, // Spacing between columns
            mainAxisSpacing: 20, // Spacing between rows
          ),
          itemCount: 15,
          itemBuilder: (context, index) {
            return Icon(Icons.verified,color: Color.fromARGB(231, 252, 153, 123),size: 49,);
             }),
                )

    );
  }
}
