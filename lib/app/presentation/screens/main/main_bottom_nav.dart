import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuto_http/app/view_model/controllers/main_controller.dart';

class MainBottomNav extends StatelessWidget {
  const MainBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainController mMainController = Get.find<MainController>();
    return Obx((){
      return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "Account",
        )
      ],
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey,
      currentIndex: mMainController.bottomNavIndex.value,
      onTap: (int index){
        mMainController.changeButtomNavIndex(index);
      },
    );
    });
  }
}
