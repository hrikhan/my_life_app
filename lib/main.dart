import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/feature/bottom_navbar/controller/bottom_navbar_controller.dart';
import 'package:my_life/feature/bottom_navbar/screen/bottom_navbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Islamic Learning',
      debugShowCheckedModeBanner: false,
      initialBinding: BindingsBuilder(
        () => Get.put<BottomNavbarController>(BottomNavbarController()),
      ),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColor.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.background,
          foregroundColor: AppColor.textPrimary,
          elevation: 0,
        ),
      ),
      home: const BottomNavbarScreen(),
    );
  }
}
