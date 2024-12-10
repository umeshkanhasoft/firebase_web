import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_web/routes/app_pages.dart';
import 'package:test_web/routes/app_routes.dart';
import 'package:test_web/utils/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soul Train',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mediumLight),
        scaffoldBackgroundColor: AppColors.light,
        useMaterial3: true,
      ),
      builder: (context, child) {
        return ScaffoldMessenger(
          child: Scaffold(body: child ?? Container()),
        );
      },
      initialRoute: AppRoutes.test,
      getPages: AppPages.pages,
    );
  }
}
