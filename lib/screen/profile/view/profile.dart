import 'package:badges/badges.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map/plugin_api.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'package:japantest/screen/profile/controller/profile_controller.dart';
import 'package:japantest/screen/profile/view/widget/textfield_combo.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'widget/checkbox_row.dart';
import 'widget/image_list.dart';
import 'widget/time_dropdown.dart';

// For handling latitude and longitude data

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final control = Get.put(ProfileController());
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: Get.size.height * 0.07,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 232, 232, 232),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Color.fromARGB(255, 143, 143, 143),
                    )),
              ),
              Text(
                '店舗プロフィール編集',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),GetBuilder<ProfileController>(
                                          builder: (controller) {
                                            return
                                             badges.Badge(badgeStyle: BadgeStyle(badgeColor: Colors.orange, ),
                                                position: BadgePosition.topEnd(
                                                    top: 0, end: 0,),
                                                badgeContent: Text(
                                                   '99+',style: TextStyle(fontSize: 8,color: Colors.white),),
                                                child:  Icon(Icons.notifications_outlined,size: 36,));
                                          },
                                        ),
              
            ],
          ),
        ),
        Container(
          height: 1,
          width: Get.size.width,
          color: const Color.fromARGB(255, 221, 221, 221),
        ),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFieldCombo(hed: '店舗名', hintTex: 'Mer キッチン'),
                      TextFieldCombo(hed: '代表担当者名', hintTex: '林田　絵梨花'),
                      TextFieldCombo(hed: '店舗電話番号', hintTex: '123 - 4567 8910'),
                      TextFieldCombo(hed: '店舗住所', hintTex: '大分県豊後高田市払田791-13'),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: Get.size.height * 0.4,
                  width: Get.size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.amber
                  ),
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(37.774929, -122.419418),
                      zoom: 15,
                    ),
                  ),
                ),
              ),
              GetBuilder<ProfileController>(
                builder: (controller) {
                  return Column(
                    children: [
                      ImageList(
                          tex: '店舗外観*',
                          hint: '（最大3枚まで）',
                          imge1: control.image1,
                          imge2: control.image2,
                          imge3: control.image3,
                          imgecheck1: 1,
                          imgecheck2: 2,
                          imgecheck3: 3),
                      ImageList(
                          tex: '店舗内観*',
                          hint: '（1枚〜3枚ずつ追加してください）',
                          imge1: control.image4,
                          imge2: control.image5,
                          imge3: control.image6,
                          imgecheck1: 4,
                          imgecheck2: 5,
                          imgecheck3: 6),
                      ImageList(
                        tex: '料理写真*',
                        hint: '（1枚〜3枚ずつ追加してください）',
                        imge1: control.image7,
                        imge2: control.image8,
                        imge3: control.image9,
                        imgecheck1: 7,
                        imgecheck2: 8,
                        imgecheck3: 9,
                      ),
                      ImageList(
                        tex: 'メニュー写真*',
                        hint: '（1枚〜3枚ずつ追加してください）',
                        imge1: control.image10,
                        imge2: control.image11,
                        imge3: control.image12,
                        imgecheck1: 10,
                        imgecheck2: 11,
                        imgecheck3: 12,
                      ),
                    ],
                  );
                },
              ),

              GetBuilder<ProfileController>(
                builder: (controller) {
                  return Column(
                    children: [
                      TimeDropDown(
                          tex: '営業時間',
                          value1: control.drop1,
                          value2: control.drop2),
                      SizedBox(
                        height: 20,
                      ),
                      TimeDropDown(
                          tex: 'ランチ時間',
                          value1: control.drop3,
                          value2: control.drop4),
                    ],
                  );
                },
              ),
              // SizedBox(height: 200,width: 500,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       CheckboxListTile(
              //         title: Text('Checkbox 1'),
              //         value:control. checkboxValue1,
              //         onChanged: (value) {

              //         },
              //       ),
              //       CheckboxListTile(
              //         title: Text('Checkbox 2'),
              //         value: control. checkboxValue2,
              //         onChanged: (value) {

              //         },
              //       ),
              //       CheckboxListTile(
              //         title: Text('Checkbox 3'),
              //         value:control.  checkboxValue3,
              //         onChanged: (value) {

              //         },
              //       ),
              //       CheckboxListTile(
              //         title: Text('Checkbox 4'),
              //         value:control.  checkboxValue4,
              //         onChanged: (value) {

              //         },
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: GetBuilder<ProfileController>(builder: (controller) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0, top: 20),
                        child: RichText(
                            text: TextSpan(
                                text: '定休日',
                                style: TextStyle(color: Colors.black),
                                children: [
                              TextSpan(
                                  text: '*', style: TextStyle(color: Colors.red))
                            ])),
                      ),
                      CollectionCheckBox(check1:control.checkboxValue1 ,check2:control.checkboxValue2 ,check3:control.checkboxValue3 ,check4:control.checkboxValue4 ,
                          control: control,
                          tex1: '月',
                          tex2: '火',
                          tex3: '水',
                          tex4: '木',toCheck1: 1,toCheck2: 2,toCheck3: 3,toCheck4: 4),
                      CollectionCheckBox(check1:control.checkboxValue5 ,check2:control.checkboxValue6 ,check3:control.checkboxValue7 ,check4:control.checkboxValue8 ,
                          control: control,
                          tex1: '金',
                          tex2: '土',
                          tex3: '日',
                          tex4: '祝',toCheck1: 5,toCheck2: 6,toCheck3: 7,toCheck4: 8),
                    ],
                  );
                },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: '料理カテゴリー',
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: '*', style: TextStyle(color: Colors.red))
                        ])),
                    SizedBox(
                      height: 15,
                    ),
                    GetBuilder<ProfileController>(
                      builder: (controller) {
                        return Container(
                          height: 50,
                          width: Get.size.width * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 206, 204, 204))),
                          child: Center(
                            child: DropdownButton(
                              underline: SizedBox(),
                              value: control.dropLarge,
                              hint: Text(
                                '料理カテゴリー選択',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 136, 136, 135)),
                              ),
                              icon: Icon(
                                CupertinoIcons.chevron_down,
                                color: Color.fromARGB(255, 170, 170, 170),
                              ),
                              iconSize: 35,
                              elevation: 16,
                              items: <String>[
                                'selection 1',
                                'selection 2',
                                'selection 3',
                                'selection 4',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                control.dropLargeChange(value!);
                                // control.drop2==value2?control.drop2Change(value!):control.drop4==value2?control.drop4Change(value!):'';
                              },
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: '予算',
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: '*', style: TextStyle(color: Colors.red))
                        ])),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 206, 204, 204))),
                          height: 50,
                          width: Get.size.width * 0.35,
                          child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '~',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 206, 204, 204))),
                          height: 50,
                          width: Get.size.width * 0.35,
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'キャッチコピー',
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: '*', style: TextStyle(color: Colors.red))
                        ])),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 206, 204, 204))),
                          height: 50,
                          width: Get.size.width * 0.9,
                          child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: '座席数',
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: '*', style: TextStyle(color: Colors.red))
                        ])),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 206, 204, 204))),
                          height: 50,
                          width: Get.size.width * 0.9,
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              GetBuilder<ProfileController>(builder:(controller) {
                return Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: '喫煙席',
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                TextSpan(
                                    text: '*', style: TextStyle(color: Colors.red))
                              ])),
                        ],
                      ),
                    ),Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween, // evenly distribute checkboxes
                    children: [
                      Flexible(
                        child: CheckboxListTile(
                          title: Text('有'),
                          value: control.sexcheckboxValue1,
                          onChanged: (value) {
                            control.sexcheckupdate1();
              
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      Flexible(
                        child: CheckboxListTile(
                          title: Text('無'),
                          value: control.sexcheckboxValue2,
                          onChanged: (value) {
                            control.sexcheckupdate2();
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        width: Get.size.width * 0.5,
                      )
                    ]),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: '駐車場',
                              style: TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: '*', style: TextStyle(color: Colors.red))
                          ])),
                    ],
                  ),
                ),
                Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween, // evenly distribute checkboxes
                    children: [
                      Flexible(
                        child: CheckboxListTile(
                          title: Text('有'),
                          value: control.sexcheckboxValue3,
                          onChanged: (value) {control.sexcheckupdate3();},
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      Flexible(
                        child: CheckboxListTile(
                          title: Text('無'),
                          value: control.sexcheckboxValue4,
                          onChanged: (value) {control.sexcheckupdate4();},
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        width: Get.size.width * 0.5,
                      )
                    ]),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: '来店プレゼント',
                              style: TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: '*', style: TextStyle(color: Colors.red))
                          ])),
                    ],
                  ),
                ),
                  ],
                );
              },
              ),
              
              GetBuilder<ProfileController>(builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween, // evenly distribute checkboxes
                    children: [
                      Flexible(
                        child: SizedBox(
                          width: 35,
                          child: CheckboxListTile(
                            // title: Row(
                            //   children: [
                            //     ,),
                            //   ],
                            // ),
                            value: control.lastcheckboxValue1,
                            onChanged: (value) {
                              control.lastcheckupdate1();
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ),
                      ),
                      Text('有（最大３枚まで)', style: TextStyle(fontSize: 20)),
                      SizedBox(
                        width: 30,
                      ),
                      Flexible(
                        child: CheckboxListTile(
                          value: control.lastcheckboxValue2,
                          onChanged: (value) {control.lastcheckupdate2();},
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('無'),
                      SizedBox(
                        width: Get.size.width * 0.23,
                      )
                    ],
                  ),
                );
              },
              ),
              GetBuilder<ProfileController>(builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: [
                      DottedBorder(
                        color: Color.fromARGB(255, 172, 172, 172),
                        strokeCap: StrokeCap.butt,
                        child:control.lastimage1!=null? Stack(
                    children: [Image.file(
                    control.lastimage1! ,
                     height: Get.size.width * 0.3,
                    
                        width: Get.size.width * 0.25,
                    fit: BoxFit.cover,
                  ),Positioned(top: 0,right: 0,
                    child: IconButton(onPressed: () {
                       control.lastimgupdate1();
                    }, icon: Icon(Icons.highlight_remove_outlined,color: const Color.fromARGB(255, 120, 120, 120),)),
                  )]
                  ): GestureDetector(onTap: () {
                 control.lastgetImageFromGallery1();
              },
                child: Container(
                          height: Get.size.width * 0.3,
                          width: Get.size.width * 0.25,
                          decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.image_outlined,
                                      size: 30,
                                      color: Color.fromARGB(255, 172, 172, 172),
                                    )),
                                Text(
                                  '写真を追加',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 172, 172, 172)),
                                )
                              ]),
                        ),
                      )),
                      SizedBox(
                        width: Get.size.width * 0.026,
                      ),
                      DottedBorder(
                        color: Color.fromARGB(255, 172, 172, 172),
                        strokeCap: StrokeCap.butt,
                        child:control.lastimage2!=null? Stack(
                    children: [Image.file(
                    control.lastimage2! ,
                     height: Get.size.width * 0.3,
                    
                        width: Get.size.width * 0.25,
                    fit: BoxFit.cover,
                  ),Positioned(top: 0,right: 0,
                    child: IconButton(onPressed: () {
                      control.lastimgupdate2();
                    }, icon: Icon(Icons.highlight_remove_outlined,color: const Color.fromARGB(255, 120, 120, 120),)),
                  )]
                  ): GestureDetector(onTap: () {
                control.lastgetImageFromGallery2();
              },
                child: Container(
                          height: Get.size.width * 0.3,
                          width: Get.size.width * 0.25,
                          decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.image_outlined,
                                      size: 30,
                                      color: Color.fromARGB(255, 172, 172, 172),
                                    )),
                                Text(
                                  '写真を追加',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 172, 172, 172)),
                                )
                              ]),
                        ),
                      )),
                      SizedBox(
                        width: Get.size.width * 0.026,
                      ),
                      DottedBorder(
                        color: Color.fromARGB(255, 172, 172, 172),
                        strokeCap: StrokeCap.butt,
                        child:control.lastimage3!=null? Stack(
                    children: [Image.file(
                    control.lastimage3! ,
                     height: Get.size.width * 0.3,
                    
                        width: Get.size.width * 0.25,
                    fit: BoxFit.cover,
                  ),Positioned(top: 0,right: 0,
                    child: IconButton(onPressed: () {
                      control.lastimgupdate3();
                    }, icon: Icon(Icons.highlight_remove_outlined,color: const Color.fromARGB(255, 120, 120, 120),)),
                  )]
                  ): GestureDetector(onTap: () {
                control.lastgetImageFromGallery3();
              },
                child: Container(
                          height: Get.size.width * 0.3,
                          width: Get.size.width * 0.25,
                          decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.image_outlined,
                                      size: 30,
                                      color: Color.fromARGB(255, 172, 172, 172),
                                    )),
                                Text(
                                  '写真を追加',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 172, 172, 172)),
                                )
                              ]),
                        ),
                      ),)
                    ],
                  ),
                );
              },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: '来店プレゼント名',
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: '*', style: TextStyle(color: Colors.red))
                        ])),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 206, 204, 204))),
                          height: 50,
                          width: Get.size.width * 0.9,
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: SizedBox(
                  width: Get.size.width * 0.4,
                  child: Card(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(176, 247, 151, 78),
                          // Change the text color of the button
                          elevation: 3,
                          maximumSize: Size(
                              60, 50), // Change the elevation of the button
                          minimumSize:
                              Size(60, 50), // Change the size of the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Change the border radius of the button
                          ),
                        ),
                        onPressed: () {},
                        child: Center(child: Text('編集を保存'))),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        )
      ]),
    );
  }
}
