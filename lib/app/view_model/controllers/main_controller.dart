import 'package:get/get.dart';


class MainController extends GetxController{
  RxInt bottomNavIndex = RxInt(0);

  void changeButtomNavIndex(int index){
    if(index!= bottomNavIndex.value){
      bottomNavIndex.value = index;
    }
  }
  
}