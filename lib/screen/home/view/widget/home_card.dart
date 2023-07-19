import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: Get.size.width * 0.06,
              top: 28,
              right: Get.size.width * 0.06),
          child: Container(
            height: Get.size.height * 0.5,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.08),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes the position of the shadow
                ),
              ],
            ),
            child: Column(children: [
              SizedBox(
                  height: Get.size.height * 0.5 * 0.51,
                  width: Get.size.width,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Image.network(
                        'https://media.istockphoto.com/id/1128392980/photo/nurse-smiling-at-the-patient-lying-in-bed.jpg?s=612x612&w=0&k=20&c=48EkTbmhklxBzXI52rF8b-Skc5SGHC_sONG4n7A75TU=',
                        fit: BoxFit.cover,
                      ))),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 3.0, top: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: Get.size.height * 0.5 * 0.064,
                            width: Get.size.width * 0.38,
                            decoration: BoxDecoration(color: Colors.amber[50]),
                            child: Center(
                              child: Text(
                                '本日まで介護付き有料老人ホーム',
                                style: TextStyle(
                                    fontSize: Get.size.width * 0.38 * 0.06,
                                    color: Color.fromARGB(255, 255, 179, 0)),
                              ),
                            ),
                          ),
                          Text(
                            '¥ 6,000',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('5月 31日（水）08 : 00 ~ 17 : 00'),
                        Text('北海道札幌市東雲町3丁目916番地17号'),
                        Text('交通費 300円'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '住宅型有料老人ホームひまわり倶楽部',
                              style: TextStyle(
                                  color: Color.fromARGB(177, 158, 158, 158)),
                            ),
                            Icon(
                              Icons.favorite_border_outlined,
                              color: Color.fromARGB(177, 158, 158, 158),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
        Positioned(
          bottom: Get.size.height * 0.5 * 0.504,
          left: Get.size.width * 0.06,
          child: Container(
            height: Get.size.height * 0.03,
            width: Get.size.width * 0.22,
            decoration: BoxDecoration(color: Color.fromARGB(227, 239, 83, 80)),
            child: Center(
              child: Text(
                '本日まで',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
