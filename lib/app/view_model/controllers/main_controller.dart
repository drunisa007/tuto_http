import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class MainController extends GetxController{
  RxInt bottomNavIndex = RxInt(0);

  

  void changeButtomNavIndex(int index){
    if(index!= bottomNavIndex.value){
      bottomNavIndex.value = index;
    }
  }
  
}