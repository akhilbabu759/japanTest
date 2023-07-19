import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/verify_card.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> date=['2021 / 11 / 18','2021 / 11 / 17','2021 / 11 / 16','2021 / 11 / 13'];
    List<String> aftDate=['スタンプを獲得しました。','スタンプを獲得しました。','スタンプを獲得しました。','スタンプを獲得しました。'];
    
    return Scaffold(
      body: Container(
        height: Get.size.height,
        child: Stack(children: [
          Container(
            height: Get.size.height * 0.3,
            width: Get.size.width,
            color: Color.fromARGB(196, 91, 144, 242),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.size.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(216, 70, 133, 250),
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.arrow_back_ios_new_sharp,size: 18,),
                        ),
                        radius: 24,
                      ),
                      Text(
                        'スタンプカード詳細',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.remove_circle_outline_outlined,
                        size: 28,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mer キッチン',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Row(
                        children: [
                          Text(
                            '現在の獲得数',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            '30',
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ),
                          Text(
                            '個',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              top: Get.size.height * 0.3 * 0.78,
              child: Container(
                height: Get.size.height * 7,
                width: Get.size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26)),
                    color: Color.fromARGB(255, 244, 244, 244)),
                child: Column(children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: SizedBox(
                      child: Container(
                        height: Get.size.height * 0.27,
                        width: Get.size.width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: VerifyCard(),
                          ),
                          itemCount: 3,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('2 / 2枚目'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Text(
                          'スタンプ獲得履歴',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(separatorBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 2,width: Get.size.width,color: const Color.fromARGB(255, 210, 210, 210),),
                      );
                    },
                      itemCount: 4,itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left:5.0,right: 5,bottom: 5),
                        child: ListTile(
                          leading: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                date[index],
                                style: TextStyle(
                                    color: Color.fromARGB(255, 164, 164, 164), fontSize: 13),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                aftDate[index],
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),trailing: Column(
                            children: [Text(''),SizedBox(height: 10,),
                              Text('1 個',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      );
                    },
                    ),
                  )
                ]),
              ))
        ]),
      ),
    );
  }
}
