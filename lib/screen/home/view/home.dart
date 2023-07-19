import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:japantest/screen/home/controller/home_controller.dart';

import 'widget/date_card.dart';
import 'widget/home_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
     
     final homeControl=Get.put(HomeComntroller());
    List<String> date = ['木', '金', '土', '日', '月', '火', '水'];
    List<String> num = ['26', '27', '28', '29', '30', '31', '1'];
    return Scaffold(floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,floatingActionButton: CircleAvatar(radius: 30, backgroundColor: Color.fromARGB(232, 240, 169, 82),child: Icon(Icons.document_scanner_outlined,color: Colors.white,size: 33,)),
      bottomNavigationBar:  GetBuilder<HomeComntroller>(builder: (controller) {
        return BottomNavigationBar(unselectedLabelStyle: TextStyle(color: Colors.black),
              unselectedItemColor: Colors.black,
               type: BottomNavigationBarType.fixed,
              
              onTap: (value) async {
                homeControl.navbarChang(value);
                
      
              
              },
              currentIndex: homeControl.navIndex,
              selectedItemColor: const Color.fromARGB(255, 243, 180, 33),
              items: const [
                BottomNavigationBarItem(
                    label: 'さがす',
                    icon: Icon(
                      Icons.search,
                    )),
                BottomNavigationBarItem(
                    label: 'お仕事',
                    icon: Icon(
                      Icons.business_center_outlined,
                    )),
                BottomNavigationBarItem(
                    label: '打刻する',
                    icon: Icon(
                      Icons.settings,color: Colors.white,
                    )),BottomNavigationBarItem(
                    label: 'チャット',
                    icon: Icon(
                      Icons.message_outlined,
                    )),BottomNavigationBarItem(
                    label: 'マイページ',
                    icon: Icon(
                      Icons.person_outline_outlined,
                    ))
              ]);
      },
      ),
      
    
      body:Stack(alignment: Alignment.bottomRight,
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.size.height * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.size.width * 0.06),
                    child: Row(
                      children: [
                        Container(
                          height: Get.size.height * 0.05,
                          width: Get.size.width * 0.62,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 237, 237, 237),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Row(
                                children: [
                                  Text('北海道, 札幌市'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Get.size.width * 0.6 * 0.08,
                        ),
                        Icon(
                          CupertinoIcons.slider_horizontal_3,color: Colors.grey[500],
                          size: Get.size.height * 0.05,
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                          size: Get.size!.height * 0.05,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Container(
                      height: Get.size!.height * 0.05,
                      width: Get.size!.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 231, 184, 54),
                            Color.fromARGB(143, 231, 184, 54),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '2022年 5月 26日（木）',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.size!.width * 0.06, top: 28),
                    child: SizedBox(
                      width: Get.size.width,
                      height: Get.size.height * 0.1,
                      child: Row(
                        children: [
                          GetBuilder<HomeComntroller>( builder: (controller) {
                            return Expanded(
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 7,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: GestureDetector(onTap: () {
                                    homeControl.changeDateIndex(index);
                                  },
                                    child: DateCard(
                                      texColo:homeControl.dateIndex==index?Colors.white:Colors.black,
                                      colo:homeControl.dateIndex==index?Color.fromARGB(223, 255, 179, 0):Colors.white24,
                                      num: num[index],
                                      tex: date[index],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          ),
                        ],
                      ),
                    ),
                  ),
                  HomeCard(),
                  HomeCard(),
                ],
              ),
            ),
          ),
          Positioned(bottom: 34,right: 18 , child: CircleAvatar(backgroundColor: Colors.white,radius: 30,child: Icon(Icons.location_on_outlined,color: Colors.black,size: 30,),))
        ],
      ),
    );
  }
}
