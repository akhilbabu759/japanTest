import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController{
  String drop1='10:00';
  String drop2='11:00';
  String drop3='12:00';
  String drop4='13:00';
  String dropLarge='selection 1';
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;
  bool checkboxValue4 = true;
  bool lastcheckboxValue1 = false;
  bool lastcheckboxValue2 = false;
  
   bool sexcheckboxValue1 = false;
  bool sexcheckboxValue2 = false;
  bool sexcheckboxValue3 = false;
  bool sexcheckboxValue4 = true;
   bool checkboxValue5 = false;
  bool checkboxValue6 = false;
  bool checkboxValue7 = false;
  bool checkboxValue8 = true;

  File? image1;
  File? image2;
  File? image3;
  File? image4;
  File? image5;
  File? image6;
  File? image7;
  File? image8;
  File? image9;
  File? image10;
  File? image11;
  File? image12;
  File? lastimage1;
  File? lastimage2;
  File? lastimage3;
  void lastimgupdate1(){
lastimage1=null;
update();
}
Future<void> lastgetImageFromGallery1() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      lastimage1 = File(pickedFile.path);
      update();
    
  }
}
void lastimgupdate2(){
lastimage2=null;
update();
}
Future<void> lastgetImageFromGallery2() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      lastimage2 = File(pickedFile.path);
      update();
    
  }
}
void lastimgupdate3(){
lastimage3=null;
update();
}
Future<void> lastgetImageFromGallery3() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      lastimage3 = File(pickedFile.path);
      update();
    
  }
}
  void dropLargeChange(String val){
    dropLarge=val;
    update();
  }
  void lastcheckupdate1(){
    lastcheckboxValue1=!lastcheckboxValue1;
    update();
  }
   void lastcheckupdate2(){
    lastcheckboxValue2=!lastcheckboxValue2;
    update();
  }
  void sexcheckupdate1(){
    sexcheckboxValue1=!sexcheckboxValue1;
    update();
  }
   void sexcheckupdate2(){
    sexcheckboxValue2=!sexcheckboxValue2;
    update();
  }
   void sexcheckupdate3(){
    sexcheckboxValue3=!sexcheckboxValue3;
    update();
  }
   void sexcheckupdate4(){
    sexcheckboxValue4=!sexcheckboxValue4;
    update();
  }
  void checkupdate1(){
    checkboxValue1=!checkboxValue1;
    update();
  }
  void checkupdate2(){
    checkboxValue2=!checkboxValue2;
    update();
  }
  void checkupdate3(){
    checkboxValue3=!checkboxValue3;
    update();
  }
  void checkupdate4(){
    checkboxValue4=!checkboxValue4;
    update();
  }
  void checkupdate5(){
    checkboxValue5=!checkboxValue5;
    update();
  }
  void checkupdate6(){
    checkboxValue6=!checkboxValue6;
    update();
  }
  void checkupdate7(){
    checkboxValue7=!checkboxValue7;
    update();
  }
  void checkupdate8(){
    checkboxValue8=!checkboxValue8;
    update();
  }
   // Variable to store the selected image
void imgupdate1(){
image1=null;
update();
}
void imgupdate2(){
image2=null;
update();
}
void imgupdate3(){
image3=null;
update();
}
void imgupdate4(){
image4=null;
update();
}
void imgupdate5(){
image5=null;
update();
}
void imgupdate6(){
image6=null;
update();
}
void imgupdate7(){
image7=null;
update();
}
void imgupdate8(){
image8=null;
update();
}
void imgupdate9(){
image9=null;
update();
}
void imgupdate10(){
image10=null;
update();
}
void imgupdate11(){
image11=null;
update();
}
void imgupdate12(){
image12=null;
update();
}
Future<void> getImageFromGallery1() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image1 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery2() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image2 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery3() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image3 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery4() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image4 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery5() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image5 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery6() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image6 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery7() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image7 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery8() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image8 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery9() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image9 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery10() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image10 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery11() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image11 = File(pickedFile.path);
      update();
    
  }
}
Future<void> getImageFromGallery12() async {
  log('pick');
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
   
      image12 = File(pickedFile.path);
      update();
    
  }
}
 
  void drop1Change(String val){
    drop1=val;
    update();
    log('drop1');
  }
  void drop2Change(String val){
    drop2=val;
    update();
    log('drop2');
  }
  void drop3Change(String val){
    drop3=val;
    update();
    log('drop3');
  }
  void drop4Change(String val){
    drop4=val;
    update();
    log('drop4');
  }
}