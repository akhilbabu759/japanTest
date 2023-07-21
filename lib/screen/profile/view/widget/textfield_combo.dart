
import 'package:flutter/material.dart';

class TextFieldCombo extends StatelessWidget {
  const TextFieldCombo({required this.hed,required this.hintTex,
    super.key,
  });
  final String hed;
  final String hintTex;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [ SizedBox(
          height: 20,
        ),
        RichText(
            text: TextSpan(
                text:hed ,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
              TextSpan(
                  text: '*',
                  style: TextStyle(color: Colors.red))
            ])),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(hintText: hintTex,hintStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(
                          255, 238, 238, 238)))),
        )
      ],
    );
  }
}
