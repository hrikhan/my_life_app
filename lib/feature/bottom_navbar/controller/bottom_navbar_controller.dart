import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  final RxInt currentIndex = 0.obs;

  late final PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentIndex.value);
  }

  void onBottomNavTap(int index) {
    if (index == currentIndex.value) {
      return;
    }

    currentIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 280),
      curve: Curves.easeOutCubic,
    );
  }

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
