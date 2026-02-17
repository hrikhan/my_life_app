import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';
import 'package:my_life/feature/bottom_navbar/controller/bottom_navbar_controller.dart';
import 'package:my_life/feature/bottom_navbar/home/screen/home_screen.dart';
import 'package:my_life/feature/bottom_navbar/home/widgets/home_curved_app_bar.dart';
import 'package:my_life/feature/bottom_navbar/res/bottom_navbar_res.dart';
import 'package:my_life/feature/bottom_navbar/widgets/courses_tab_page.dart';
import 'package:my_life/feature/bottom_navbar/widgets/hadith_tab_page.dart';
import 'package:my_life/feature/bottom_navbar/widgets/quran_tab_page.dart';

class BottomNavbarScreen extends StatelessWidget {
  const BottomNavbarScreen({super.key});

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    CoursesTabPage(),
    QuranTabPage(),
    HadithTabPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final BottomNavbarController controller =
        Get.find<BottomNavbarController>();

    return Obx(() {
      final int selectedIndex = controller.currentIndex.value;

      return Scaffold(
        appBar: selectedIndex == 0
            ? const HomeCurvedAppBar()
            : AppBar(
                centerTitle: true,
                title: Text(BottomNavbarRes.tabs[selectedIndex].label),
              ),
        body: PageView(
          controller: controller.pageController,
          onPageChanged: controller.onPageChanged,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColor.navSelected,
          unselectedItemColor: AppColor.navUnselected,
          onTap: controller.onBottomNavTap,
          items: BottomNavbarRes.tabs
              .map(
                (tab) => BottomNavigationBarItem(
                  icon: Icon(tab.icon),
                  label: tab.label,
                ),
              )
              .toList(),
        ),
      );
    });
  }
}
