import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tuto_http/app/presentation/screens/account/account_screen.dart';
import 'package:tuto_http/app/presentation/screens/home/home_screen.dart';
import 'package:tuto_http/app/presentation/screens/main/main_bottom_nav.dart';
import 'package:tuto_http/app/view_model/controllers/main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainController mMainController = Get.find<MainController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Obx(() {
        return IndexedStack(
          index: mMainController.bottomNavIndex.value,
          children: const [
            HomeScreen(),
            AccountScreen(),
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode) {
            print("pressed");
          }
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const MainBottomNav(),
    );
  }
}
