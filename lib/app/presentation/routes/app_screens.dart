import 'package:get/get.dart';
import 'package:tuto_http/app/presentation/screens/main/main_screen.dart';
part './app_names.dart';

abstract class App {
  static final screens = [
    GetPage(
      name: AppNames.mainScreen,
      page: () => const MainScreen(),
    )
  ];
}
