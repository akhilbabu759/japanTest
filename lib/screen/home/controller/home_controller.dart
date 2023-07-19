import 'package:get/get.dart';

class HomeComntroller extends GetxController{
  int dateIndex=0;
   int navIndex=0;
  void changeDateIndex(int index){
    dateIndex=index;
    update();
  }
  navbarChang(value){
    navIndex=value;
    update();

  }

}