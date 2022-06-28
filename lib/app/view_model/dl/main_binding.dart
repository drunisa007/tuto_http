import 'package:get/get.dart';
import 'package:tuto_http/app/view_model/controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
  }
}
