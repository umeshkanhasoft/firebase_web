import 'package:get/get.dart';
import 'package:test_web/main_screen/binding.dart';
import 'package:test_web/main_screen/view.dart';
import 'package:test_web/routes/app_routes.dart';
import 'package:test_web/test/binding.dart';
import 'package:test_web/test/view.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.main,
        page: () => const MainScreenPage(),
        binding: MainScreenBinding()),
    GetPage(
        name: AppRoutes.test,
        page: () => const TestPage(),
        binding: TestBinding()),
  ];
}
